local M = {}

function M.get_full_github_url(repo_full_name)
	return "https://github.com/" .. repo_full_name
end

return M
