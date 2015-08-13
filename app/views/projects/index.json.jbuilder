json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :area, :manager, :project_kickoff, :project_deadline, :team
  json.url project_url(project, format: :json)
end
