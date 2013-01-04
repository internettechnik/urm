# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130104193412) do

  create_table "answers", :force => true do |t|
    t.integer  "report_id"
    t.integer  "question_id"
    t.integer  "person_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["person_id"], :name => "answers_person_id_idx"
  add_index "answers", ["question_id"], :name => "answers_question_id_idx"
  add_index "answers", ["report_id"], :name => "answers_report_id_idx"

  create_table "attributes_of_people", :force => true do |t|
    t.integer  "custom_attribute_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value"
  end

  add_index "attributes_of_people", ["custom_attribute_id"], :name => "attributes_of_people_custom_attribute_id_idx"
  add_index "attributes_of_people", ["person_id"], :name => "attributes_of_people_person_id_idx"

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "report_id"
  end

  add_index "authors", ["report_id"], :name => "authors_report_id_idx"

  create_table "codereferences", :force => true do |t|
    t.integer  "report_id"
    t.string   "swproject"
    t.string   "swversion"
    t.string   "swpackage"
    t.string   "swclass"
    t.string   "swmethod"
    t.string   "swlineno"
    t.text     "notice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "codereferences", ["report_id"], :name => "codereferences_report_id_idx"

  create_table "codereferences_of_issues", :force => true do |t|
    t.integer  "codereference_id"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "codereferences_of_issues", ["codereference_id"], :name => "codereferences_of_issues_codereference_id_idx"

  create_table "custom_attributes", :force => true do |t|
    t.integer  "order"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices", :force => true do |t|
    t.integer  "report_id"
    t.integer  "person_id"
    t.string   "devicetype"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devices", ["person_id"], :name => "devices_person_id_idx"
  add_index "devices", ["report_id"], :name => "devices_report_id_idx"

  create_table "document_of_reports", :force => true do |t|
    t.integer  "document_id"
    t.integer  "report_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "document_of_reports", ["document_id"], :name => "document_of_reports_document_id_idx"
  add_index "document_of_reports", ["report_id"], :name => "document_of_reports_report_id_idx"

  create_table "documents", :force => true do |t|
    t.string   "listat"
    t.text     "description"
    t.text     "source"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "doctype"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  create_table "documents_of_findings", :force => true do |t|
    t.integer  "document_id"
    t.integer  "finding_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documents_of_findings", ["document_id"], :name => "documents_of_findings_document_id_idx"
  add_index "documents_of_findings", ["finding_id"], :name => "documents_of_findings_finding_id_idx"

  create_table "documents_of_issues", :force => true do |t|
    t.integer  "document_id"
    t.integer  "issue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documents_of_issues", ["document_id"], :name => "documents_of_issues_document_id_idx"
  add_index "documents_of_issues", ["issue_id"], :name => "documents_of_issues_issue_id_idx"

  create_table "eventcodes", :force => true do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "findings", :force => true do |t|
    t.integer  "report_id"
    t.string   "findingtype"
    t.integer  "priority"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "findings", ["report_id"], :name => "findings_report_id_idx"

  create_table "heuristics", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "report_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "heuristics", ["report_id"], :name => "heuristics_report_id_idx"

  create_table "interviews", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "report_id"
    t.integer  "person_id"
  end

  add_index "interviews", ["person_id"], :name => "interviews_person_id_idx"
  add_index "interviews", ["report_id"], :name => "interviews_report_id_idx"

  create_table "issue_foundby_people", :force => true do |t|
    t.integer  "issue_id"
    t.integer  "person_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "issue_foundby_people", ["issue_id"], :name => "issue_foundby_people_issue_id_idx"
  add_index "issue_foundby_people", ["person_id"], :name => "issue_foundby_people_person_id_idx"

  create_table "issues", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "heuristic_id"
    t.text     "reproduce"
    t.text     "notice"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "report_id"
  end

  add_index "issues", ["heuristic_id"], :name => "issues_heuristic_id_idx"
  add_index "issues", ["report_id"], :name => "issues_report_id_idx"

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "gender"
    t.integer  "age"
    t.string   "occupation"
    t.text     "itexperience"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "education"
    t.integer  "report_id"
    t.integer  "persontype_id"
    t.string   "itexperience_level"
    t.integer  "itexperience_pcusageinyears"
    t.integer  "itexperience_pcusageperweek"
    t.string   "itexperience_mainoperatingsystem"
    t.integer  "itexperience_webusageperweek"
    t.string   "itexperience_internetconnection"
    t.string   "itexperience_mainwebbrowser"
    t.string   "itexperience_description"
    t.string   "hasusabtestexperience"
    t.datetime "timestamp"
    t.text     "annotation"
    t.string   "role"
  end

  add_index "people", ["persontype_id"], :name => "people_persontype_id_idx"
  add_index "people", ["report_id"], :name => "people_report_id_idx"

  create_table "persontypes", :force => true do |t|
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qandas", :force => true do |t|
    t.text     "quest"
    t.text     "answ"
    t.integer  "interview_id"
    t.integer  "qid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qandas", ["interview_id"], :name => "qandas_interview_id_idx"

  create_table "questions", :force => true do |t|
    t.integer  "order"
    t.integer  "report_id"
    t.text     "description"
    t.text     "notice"
    t.string   "rangefrom"
    t.string   "rangeto"
    t.string   "rangescale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["report_id"], :name => "questions_report_id_idx"

  create_table "reports", :force => true do |t|
    t.integer  "project_id"
    t.string   "title"
    t.datetime "timestamp"
    t.text     "description"
    t.text     "executive_summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "introduction"
    t.text     "methodology"
    t.text     "training"
    t.text     "person_description"
    t.text     "environment_description"
    t.text     "task_description"
    t.text     "heuristicissues_description"
    t.text     "questionnaire_description"
    t.text     "questionnaireresults_description"
    t.text     "interviews_description"
    t.text     "transcripts_description"
    t.text     "analysis_description"
    t.text     "appendix_description"
    t.integer  "order"
    t.string   "testtype"
    t.text     "questionnaireresults_summary"
  end

  add_index "reports", ["project_id"], :name => "report_projectid_idx"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "severity_ofissuefoundby_people", :force => true do |t|
    t.integer  "issue_id"
    t.integer  "person_id"
    t.integer  "severity"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "severity_ofissuefoundby_people", ["issue_id"], :name => "severity_ofissuefoundby_people_issue_id_idx"
  add_index "severity_ofissuefoundby_people", ["person_id"], :name => "severity_ofissuefoundby_people_person_id_idx"

  create_table "task_results", :force => true do |t|
    t.integer  "report_id"
    t.integer  "person_id"
    t.integer  "actualduration"
    t.integer  "completion"
    t.boolean  "withassistance"
    t.text     "notice"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_id"
    t.time     "start"
    t.time     "end"
  end

  add_index "task_results", ["person_id"], :name => "task_results_person_id_idx"
  add_index "task_results", ["report_id"], :name => "task_results_report_id_idx"
  add_index "task_results", ["task_id"], :name => "task_results_task_id_idx"

  create_table "tasks", :force => true do |t|
    t.integer  "order"
    t.string   "title"
    t.text     "description"
    t.text     "prerequisite"
    t.text     "possiblesolutionpath"
    t.text     "endingcriteria"
    t.integer  "scheduledduration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "report_id"
  end

  add_index "tasks", ["report_id"], :name => "tasks_report_id_idx"

  create_table "todos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.boolean  "solved"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "todos", ["user_id"], :name => "todos_user_id_idx"

  create_table "transcript_events", :force => true do |t|
    t.integer  "report_id"
    t.integer  "person_id"
    t.datetime "timestamp"
    t.integer  "eventcode_id"
    t.text     "event"
    t.integer  "finding_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transcript_events", ["eventcode_id"], :name => "transcript_events_eventcode_id_idx"
  add_index "transcript_events", ["finding_id"], :name => "transcript_events_finding_id_idx"
  add_index "transcript_events", ["person_id"], :name => "transcript_events_person_id_idx"
  add_index "transcript_events", ["report_id"], :name => "transcript_events_report_id_idx"

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_roles", ["role_id"], :name => "user_roles_role_id_idx"
  add_index "user_roles", ["user_id"], :name => "user_roles_user_id_idx"

  create_table "users", :force => true do |t|
    t.string   "crypted_password",                           :null => false
    t.string   "password_salt",                              :null => false
    t.string   "email",                                      :null => false
    t.string   "persistence_token",                          :null => false
    t.string   "single_access_token",                        :null => false
    t.string   "perishable_token",                           :null => false
    t.integer  "login_count",         :default => 0,         :null => false
    t.integer  "failed_login_count",  :default => 0,         :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "name",                :default => "",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",              :default => "pending"
  end

  create_table "videos", :force => true do |t|
    t.integer  "person_id"
    t.string   "doctype"
    t.text     "description"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  add_index "videos", ["person_id"], :name => "videos_person_id_idx"

end
