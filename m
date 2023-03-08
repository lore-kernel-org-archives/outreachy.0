Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE88B657
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 21:08:36 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id cw28so71083692edb.5
        for <outreachy@lists.linux.dev>; Wed, 08 Mar 2023 13:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678309715;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J8ULCdCgoQsgwlp/FxKZfLMZvv/CNb8AdeKrdaNx/W8=;
        b=lvaOdb1lxY7Um3J5mdbT3hBA/AfnklikSrX/+dN+CtUahwJJJF91SamjthpkmwjVRQ
         Xee/KSBm1IFGZHY6kGXYGe0nglsbyCtGVHtB5RsA7XYklv/398pu6swZ/Gg2RE3LhLj3
         39vkL9R4fT8f22Vdbrh3CcczVCZO0+s3bBHsgWmgtXigi79Yxw8hwa21PJzxEPeWXdvj
         mnClmgPgiWViLxw9iyCar5vcyUdxGTQYtdOuXyX9s+3RrJFIZyzymnjjEdEIZ1SiYtvc
         dPEa/Z1c99DEolkahawUfUoQzYqcNqRfq4jKi0XQ5MK2VUKznK8ZoEl3AXyBHMZjXdyF
         p8sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678309715;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J8ULCdCgoQsgwlp/FxKZfLMZvv/CNb8AdeKrdaNx/W8=;
        b=q3E7HVWPfGjkt6sjVVVVszfksagI9O4SmNquLsilR5a5paOchCHJM3qCo4i/yLdACH
         3u8usUg2XfpdzjxNgz9C3QYfs66gPFv+I9g7YSTF9wVvIKrJyJUfo1nbhNMwwuAxzNYc
         7fW3lNK2U0J2CSDfYTfiVdcSWYs8awHb2Po7xVm4X7cPf3YNaKoxf90/c24SbY9Kf26X
         UqYnaRax6FPUnvA4O0NOjJ9sekUleHpCfD+TofWn8QBWnmbrwUOkKwnxc5dOj2L9eebi
         5fTHh/iT9ehdgQtkGf26IPMD8j+sZ64xYTwQXrFV2TutPAkl6R4UgwQsF/ov/j1I10o+
         lvcg==
X-Gm-Message-State: AO0yUKWk3boJMLhVBvlQmTQvCnb3ojZDslHvA6UwFdq0zPWixlUBMJqX
	Kn37HD2vP2SSZE3TgcegBrakgvq394FKJw==
X-Google-Smtp-Source: AK7set8LjlLnpm9HeCxjP/BJEMRfJjepNpwEvKCwpMTtuOTK8KNDo2HOrUzSabMphdsKp7PUO06WRQ==
X-Received: by 2002:aa7:dd06:0:b0:4ac:b31c:83d3 with SMTP id i6-20020aa7dd06000000b004acb31c83d3mr17289345edv.14.1678309714943;
        Wed, 08 Mar 2023 13:08:34 -0800 (PST)
Received: from khadija-virtual-machine ([39.41.45.115])
        by smtp.gmail.com with ESMTPSA id jy14-20020a170907762e00b008c405ebc32esm7908198ejc.28.2023.03.08.13.08.34
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 13:08:34 -0800 (PST)
Date: Thu, 9 Mar 2023 02:08:32 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: outreachy@lists.linux.dev
Subject: Set up email client mutt
Message-ID: <ZAj5UL8HJO7FSez0@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi everyone!
I am an Outreachy applicant. Gladly, I am sending this email from mutt
after spending some time on its setup and understanding. I am quite new
to text based email clients.

Here is a list of steps I have understood:

1. Set up vim as mentioned in first patch tutorial.
This is what my .vimrc file looks like:
filetype plugin indent on
syntax on
set title
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab

2. Learn some vim basics, since we set it as default mutt editor.

3. Create and edit .esmtprc and .muttrc files as mentioned in the First
Patch tutorial.

This is what my .esmtp file looks like:
identity "username@gmail.com"
hostname smtp.gmail.com:587
username "username@gmail.com"
password "not_my_password"
starttls required

This is what my .muttrc file looks like:
set sendmail="/usr/bin/esmtp"
set envelope_from=yes
set from="Full Name <username@gmail.com>"
set use_from=yes
set edit_headers=yes
set sort_aux = last-date-received
set sort = reverse-threads
set folder = "imaps://username@gmail.com@imap.gmail.com:993"
set imap_pass = "not_my_password"
set spoolfile = "+INBOX"
set record = "+Sent"
set trash = "+Trash"
set postponed = "+Drafts"
mailboxes =INBOX =Sent =Trash =Drafts =Junk =Other

4. Finally run mutt from your command prompt and start working.

Kindly, let me know if something is still missing or is incorrect. 

Thank you :)
