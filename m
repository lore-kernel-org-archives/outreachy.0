Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E01C10941
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 10:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fnYFndJ9"
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4060b623e64so4878815e9.0
        for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 03:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697020268; x=1697625068; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1sBMdGMTbTEy5Oo6D6oImER9eMAghQqD/e2h+De41J8=;
        b=fnYFndJ9MNk7Ej00bpQRXBwV2Fw/joOuM64QFZZeVgY2zF+s/JTOG1KpC80eghxI4M
         +6j8XqAhL2/HEPnLS03E8tMCSphaPHy9w6tLNFqNENQHsx4k3BeieHpx652qhl3dCgs/
         MuuKsspbIL8yyar8JLLNe5q7gvelC8lULPGmgOW/vLIQZxL1kWK8rDLAFmv/TGf2OoQY
         r1YJScxw/EXodpfgiQey0Teo5xrDYsgpZcgZPmm+p571x+ibF26ZUX9o0eAS7XLHk9Yr
         AsGiTLMNpT8zu/niItOmEGf6yP5ZpdaIKEZOLhI3QddhfkyhM2QSdjx94OzPaWZKA5NW
         Rohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697020268; x=1697625068;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1sBMdGMTbTEy5Oo6D6oImER9eMAghQqD/e2h+De41J8=;
        b=EZH4OARjRK+9X/UgUEPJL/seMG0oli30OFOC06GVChrQDsTBtVuF3XIybe64rhbkNL
         rYxu8vp9cUMqGCiZKH1r+kmNwtdlBu4cxnRg+nhrLGHR91w0aSuy/lrit9oKsgsVXERi
         SdA0osvVp3Y5BjFbPbnSpz4Dof7jRmIeib67GWAOWG/hGoA64uSvzPz70naWSnmr1snI
         pKGnroglxhdans6cOX/dv2mQ1CgkuHVZjaQ33ekSM8eFEeVLy9pGEhGALoY/MOlRRoaf
         zWz1lwu5pDMSSsmZBF1cRoSdNS2KPD+0JqVCoi/bupf9v2Ypht4XCXisy33Rd5pKw+Pf
         qWrQ==
X-Gm-Message-State: AOJu0YwfLdgqJ4A5DcCp4pVt4cigecZ+VPSTvCADY7rVSQ2WjgjLsg+h
	DTK5Eyvm9wO75eKBSPq3m+cN++bYRYNVSXY/
X-Google-Smtp-Source: AGHT+IFpAGS94rc1BfUiUxTkTqhHzPVY6rLiDr5CyaUiaKEIXnCxtPVmLiMYyGY7Ut6ommTgYw5s9w==
X-Received: by 2002:a05:600c:4f02:b0:401:609f:7f9a with SMTP id l2-20020a05600c4f0200b00401609f7f9amr15525535wmq.8.1697020267882;
        Wed, 11 Oct 2023 03:31:07 -0700 (PDT)
Received: from gilbert-PC ([105.112.180.10])
        by smtp.gmail.com with ESMTPSA id u6-20020a05600c00c600b00402ff8d6086sm16322096wmm.18.2023.10.11.03.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 03:31:07 -0700 (PDT)
Date: Wed, 11 Oct 2023 11:31:01 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: outreachy@lists.linux.dev
Cc: julia.lawall@inria.fr
Subject: [Outreachy tip] Guide to setup mutt for Gmail
Message-ID: <ZSZ5ZfwTdkHcG5WL@gilbert-PC>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

This is a guide to setup mutt, the recommended text-based email client
for the Outreachy Linux community.

If you have not read the newbies tutorial, please read it first to see the 
steps for the initial setup of mutt. This guide is a follow-up to the initial
setup steps decribed in the newbies tutorial.

Here, you will learn how to setup your mutt to access emails in
your Gmail inbox and reply to them. 

Next, set up the mail client, mutt, with some defaults, by creating a
.muttrc file in your /home and add the following lines to it:

set sendmail="/usr/bin/esmtp"
set envelope_from=yes
set from="Your name <your_username@gmail.com>"
set use_from=yes
set edit_headers=yes
set editor="vi"
set send_charset="us-ascii:utf-8"
set sort_aux =  last-date-received
set sort = reverse-threads

# IMAP settings
set imap_user = "your_username@gmail.com"
set imap_pass = "mailbox/app password"

# SMTP settings
set smtp_url = "smtps://your_username@smtp.gmail.com"
set smtp_pass = "mailbox/app password"

# Remote Gmail folders
set folder = "imaps://imap.gmail.com:993"
set spoolfile = "+INBOX"
set record = "+[Gmail]/Sent Mail"
set trash = "+[Gmail]/Trash"
set postponed = "+[Gmail]/Drafts"


Note: The imap_pass and smtp_pass can be your App password or email
password

I hopes this helps

Best wishes
Gilbert
