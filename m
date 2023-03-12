Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A4546AE
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 17:08:03 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id p6so10611450plf.0
        for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 10:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678640882;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M8gdWD6+vFQp1cXl8PZtqNTgI7x5yuAlWiOuadtikX0=;
        b=A+CT1Q7j3A390o1iP2gZWy3Ufqq8JZsc5jIgfMJwbYPl7xprZDYjgsJG4VpMK5QOwV
         cO748kn5UqEKZROPgSt9GHOeH09ZZBet16gjB7UXyqJpF6O9ey3nlcK/u+ZZbfhgpuyQ
         RA8JL+e7M05GOO0pGnAzGo8l2lTYj4pFnBXujslpUN97u1bFf6iD7Xvgf8//r94jCAFN
         2lVLF3tL640cl1U/reTLaCnDtKCH67wyKKc5jkIJHMB1exNiRfRb0BBqD5Bz8m7YdeXz
         /vHygnbyMI6MAS7XZT6GcjXBJ+svgN3rjK5SbVrBhqr3xfXRtcMNfI6TP98TThaXijpV
         HDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678640882;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M8gdWD6+vFQp1cXl8PZtqNTgI7x5yuAlWiOuadtikX0=;
        b=VlEip+8f8fvXRVZz9G/TUVdHw5OFijn0LFyvjsdpPQHPOb3W1wxHWQ6RijKAXuGRqN
         59XX1qZMuVwZd4vKo9sA/av/9y1m1LfpbdYaY/kUJRBN0Op/pjQ+XgflMiM/Tm7gnwxE
         9fmJbKnBX24Kxsi9VLgfRSoqQ/ePAPzKdckz+kVkAai6FcodJntwzJ4kFK6ZuuZmXhOp
         8HLQmBFrgJtz1DulFa2G/GsleWgxPSJXnwk6j02WzlutqimBr1LnSCufEq7XTq2awIuj
         2V98HtdTt549ZcQHt1p5Y6NA0qezpIWhA2iyCJNK81yst1frUbohJlQqHpigFvM2DzHI
         0vvg==
X-Gm-Message-State: AO0yUKWu5V+y+AYD4pJqOHhOoMeTPsO0wIHOtaFQvToZ+OxG6+9RGu+z
	0DXKAGA/2bNYDfYsrQ10gS3Ldb2ExSci5Q==
X-Google-Smtp-Source: AK7set9AbHC/Hv1tyNE9gxQM76Tx2MNtA+2mylgqzM+qqvtuTXGeH0y88eRnXcwi7xgQwEEd5HkDOg==
X-Received: by 2002:a17:903:187:b0:19c:eda7:e0fd with SMTP id z7-20020a170903018700b0019ceda7e0fdmr37090947plg.59.1678640882403;
        Sun, 12 Mar 2023 10:08:02 -0700 (PDT)
Received: from ubuntu ([59.89.166.125])
        by smtp.gmail.com with ESMTPSA id s14-20020a170902988e00b0019ab151eb90sm3068350plp.139.2023.03.12.10.08.00
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 10:08:02 -0700 (PDT)
Date: Sun, 12 Mar 2023 10:07:57 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: outreachy@lists.linux.dev
Subject: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Message-ID: <20230312170757.GE28100@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear Outreachy Team,

I am Sumitra Sharma an outreachy applicant. Since being an applicant I was
following the outreachy first-patch document https://kernelnewbies.org/Outreachyfirstpatch
I encountered some issues for which I would like to suggest some updates in the document. 

1. The outreachy document does not include the steps to make the inbox with mutt. The steps below can be added to configure mutt with gmail.

	- Open the ~/.muttrc
	- Add the information 
		
		set sendmail="/usr/bin/esmtp"
		set envelope_from=yes
		set from="Your Name <my.email@gmail.com>"
		set use_from=yes
		set edit_headers=yes
		
		# IMAP settings
		set imap_user = "username@gmail.com"
		set imap_pass = "<mailbox password>"

		# SMTP settings
		set smtp_url = "smtps://username@smtp.gmail.com"
		set smtp_pass = "<mailbox password>"

		# Remote Gmail folders
		set folder = "imaps://imap.gmail.com/"
		set spoolfile = "+INBOX"
		set postponed = "+[Gmail]/Drafts"
		set record = "+[Gmail]/Sent Mail"
		set trash = "+[Gmail]/Trash"
	
	- Where the imap_pass, smtp_pass would be the App password or
	  the mailbox password.

2. The outreachy document directly links the ".rst" file
https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst
at many places under different sections. And as noted by fabio there is a difference between the .rst source
files content and its corresponding .html file which can lead to confusions and
missing important information. I would like to suggest to change the
links to the .html/.pdf files rather than the .rst source files.


Regards 

Sumitra
