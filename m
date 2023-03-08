Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C4736D
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 23:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678319635; x=1709855635;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=xACOBXQ0yw2ujTtO9XiM2UWVqzUc9HlR5uwBkAPuuHc=;
  b=ne7CnK71MKpIyuynNXlz1SQGpV8gJfRBOBkhAI/x/SF5EUhChSg547zb
   mQGKjfT+Gd0dvOtbl1CqSDOpz1e7Arn1fZ+FrDkBf2m8CH3ptYzjI98n1
   w4vDQuaU3yGuMuavr0OGno/yP3gAj9WqjxDCw5h7r4CNQyuO7k6t02b3N
   hEW0SZ8yWLxDJA3qNKVWjmcYQve+vB9XLNmy0oKoQmGeKYIdiOsURCB9j
   uNyoBLWWflDmKl110jYJnl9IenhU/O/eSWslL13SpQ1cj6RFmTgSyUVan
   gTXB+S1SwA3TxXfJSJIFD+AKNSgJSvRKx+kCBOpOFx7sFdznAwpF8nDZx
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="401140229"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="401140229"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 15:53:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="677185594"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="677185594"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.212.215.12])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 15:53:52 -0800
Date: Wed, 8 Mar 2023 15:53:51 -0800
From: Alison Schofield <alison.schofield@intel.com>
To: Khadija Kamran <kamrankhadijadj@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Set up email client mutt
Message-ID: <ZAkgD5OU8xkffOpt@aschofie-mobl2>
References: <ZAj5UL8HJO7FSez0@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZAj5UL8HJO7FSez0@khadija-virtual-machine>

On Thu, Mar 09, 2023 at 02:08:32AM +0500, Khadija Kamran wrote:
> Hi everyone!
> I am an Outreachy applicant. Gladly, I am sending this email from mutt
> after spending some time on its setup and understanding. I am quite new
> to text based email clients.
> 
> Here is a list of steps I have understood:
> 
> 1. Set up vim as mentioned in first patch tutorial.
> This is what my .vimrc file looks like:
> filetype plugin indent on
> syntax on
> set title
> set tabstop=8
> set softtabstop=8
> set shiftwidth=8
> set noexpandtab
> 
> 2. Learn some vim basics, since we set it as default mutt editor.
> 
> 3. Create and edit .esmtprc and .muttrc files as mentioned in the First
> Patch tutorial.
> 
> This is what my .esmtp file looks like:
> identity "username@gmail.com"
> hostname smtp.gmail.com:587
> username "username@gmail.com"
> password "not_my_password"
> starttls required
> 
> This is what my .muttrc file looks like:
> set sendmail="/usr/bin/esmtp"
> set envelope_from=yes
> set from="Full Name <username@gmail.com>"
> set use_from=yes
> set edit_headers=yes
> set sort_aux = last-date-received
> set sort = reverse-threads
> set folder = "imaps://username@gmail.com@imap.gmail.com:993"
> set imap_pass = "not_my_password"
> set spoolfile = "+INBOX"
> set record = "+Sent"
> set trash = "+Trash"
> set postponed = "+Drafts"
> mailboxes =INBOX =Sent =Trash =Drafts =Junk =Other
> 
> 4. Finally run mutt from your command prompt and start working.
> 
> Kindly, let me know if something is still missing or is incorrect. 

Well, I got the mail, and it's plain text.
Let's make sure you are getting the replies now.
Alison

> 
> Thank you :)
> 
