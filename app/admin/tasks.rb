ActiveAdmin.register Task do
<<<<<<< HEAD
<<<<<<< HEAD
  scope :all, default: :true
=======
  scope :all, :default => true
>>>>>>> tweak-task
  scope :due_this_week do |tasks|
    tasks.where('due_date > ? and due_date < ?', Time.now, 1.week.from_now)
  end
  scope :late do |tasks|
    tasks.where('due_date < ?', Time.now)
  end
  scope :mine do |tasks|
<<<<<<< HEAD
    tasks.where(admin_user_id: current_admin_user.id)
  end
  
=======
>>>>>>> tweak-task
=======
    tasks.where(:admin_user_id => current_admin_user.id)
  end
  
>>>>>>> tweak-task
  show do
    panel "Task Details" do
      attributes_table_for task do
        row("Status") { status_tag (task.is_done ? "Done" : "Pending"), (task.is_done ? :ok : :error) }
        row("Title") { task.title }
        row("Project") { link_to task.project.title, admin_project_path(task.project) }
        row("Assigned To") { link_to task.admin_user.email, admin_admin_user_path(task.admin_user) }
<<<<<<< HEAD
        row ("Due Date") { task.due_date ? l(task.due_date, format: :long) : '-' }
      end
    end
=======
        row("Due Date") { task.due_date? ? l(task.due_date, :format => :long) : '-' } 
      end
    end

>>>>>>> tweak-task
    active_admin_comments
  end
end
