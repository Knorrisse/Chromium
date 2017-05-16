class chrome {
	package { chromium-browser:
		ensure => 'installed',
		allowcdrom => 'true',
	}

	file { '/etc/chromium-browser/default':
		content => template('chrome/default.erb'),
	}
	
	file { '/etc/chromium-browser/policies/managed/test_policy.json':
                content => template('chrome/test_policy.json.erb'),
        }
}  
