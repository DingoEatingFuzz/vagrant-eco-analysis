-- The union of common fields on issues and pulls

select *, 'issue' as type from issues 
union all 
select owner, repo, title, author, url, createdAt, closedAt, closed, locked, commentsCount, reactionsCount, participants, 'pull' as type from pulls