const roles = {
    admin: ['create', 'read', 'update', 'delete'],
    user: ['read']
  };

const users = {
    admin: 'admin'
  };

function hasPermission(user, action) {
    const role = users[user];
    const permissions = roles[role];
  
    return permissions.includes(action);
  };

function addUser(username, role) {
    users[username] = role;
  }

function isAuthenticated(req, res, next) {
    if (req.session && req.session.user) {
      return next();
    }
    return res.status(401).send('Unauthorized');
  }

exports.hasPermission = hasPermission;
exports.addUser = addUser;
exports.isAuthenticated = isAuthenticated;