X-GM-THRID: 6801960387185999872
X-Received: by 2002:a05:6808:5d7:: with SMTP id d23mr7515193oij.63.1583708828213;
        Sun, 08 Mar 2020 16:07:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6a5a:: with SMTP id h26ls795963otn.1.gmail; Sun, 08 Mar
 2020 16:07:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtRv+5QTzGCcRbDJRk7WO0eqYquXH+YPr6nqmPW+1MZC+eRgNBp6s51W1v5rNC7UoHCd+CR
X-Received: by 2002:a9d:4787:: with SMTP id b7mr11263026otf.323.1583708826803;
        Sun, 08 Mar 2020 16:07:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583708826; cv=none;
        d=google.com; s=arc-20160816;
        b=Af/eWC4hd7tp1SDNKdGTIGqt3+HjNaP86RtCN8DunxoBlCiJNVY0uy1JsPDTaNI6SB
         RehZtVpYwuh+bYHMGcNpcDbjo3dLsAUgD5gFqoXL3IkTQZrwojppUT/pG76EZgVjR93i
         r5W9GN+O0Wvy2jOj7kqzLhtSs67ml4kCJDXVuwCMw656EDNcAMg/B2FrYIMgpYNObmAI
         YLaBdXWUK2G713KMjPn8/0hm0fM+K2YmdZKlZh68yFQIzdwV/CWc9Ggiu/5bavjfR0lc
         s4vKtLubmTBanuAMPjSo+NmxnaTsSlIyaQ7GDpCNyiyEn2JfMx7avWjXsYkZ0rjdEuBE
         t4Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id;
        bh=Svb6fzbkabAkwjOLUGzOAzL/VyfdGkk0mnUqD4xZDkQ=;
        b=aAvtFAzmK3ZjMlVtaTfoF4W7Gtcn8i8qLXrq+neO++aAaWztL7ctzw6eC3fbiWgDZN
         2vGaIHkKCxbLdWOKzGamE1NhWbgMfZ2dM+i7tzO5bUutKbtretGnYHOrJfDvCwHi1aK3
         cDfOHWAFilf7pNrCUoEqK5C8yQdBxuHAzx2iHfxSkyU+DHe2GWYbyVJCAbfBWIoXrAiI
         JgQZ9zSV2df1dOPS4kl3xXcCPDV5zwv0ogsDaExC8YbPokhkWde6tXlMuF/wIPDhg8C0
         RRXdElgdsmqvWoU3HFCMwUTANYsuBAjCVDITKvXAH5QRR36w1Vmowj8lditc2s4ij4tJ
         ucIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.105 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0105.hostedemail.com. [216.40.44.105])
        by gmr-mx.google.com with ESMTPS id m24si234154otj.3.2020.03.08.16.07.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 16:07:06 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.105 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.105;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.105 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 1F50C4FFA;
	Sun,  8 Mar 2020 23:07:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1381:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3872:3873:3874:4321:5007:6119:7514:7522:7903:10004:10400:10848:11232:11658:11914:12043:12048:12297:12555:12740:12760:12895:13069:13071:13161:13184:13229:13311:13357:13439:14096:14097:14180:14181:14659:14721:21080:21451:21627:30012:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: alarm80_77fb7776f6e04
X-Filterd-Recvd-Size: 2174
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf16.hostedemail.com (Postfix) with ESMTPA;
	Sun,  8 Mar 2020 23:07:04 +0000 (UTC)
Message-ID: <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
From: Joe Perches <joe@perches.com>
To: Shreeya Patel <shreeya.patel23498@gmail.com>,
 gregkh@linuxfoundation.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org,  outreachy-kernel@googlegroups.com,
 sbrivio@redhat.com, daniel.baluta@gmail.com,  nramas@linux.microsoft.com,
 hverkuil@xs4all.nl, Larry.Finger@lwfinger.net
Date: Sun, 08 Mar 2020 16:05:25 -0700
In-Reply-To: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
References: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-09 at 03:30 +0530, Shreeya Patel wrote:
> Add space around operators for improving the code
> readability.

Hello again Shreeya.

The subject isn't really quite appropriate as you
are not doing this space around operator addition
for the entire subsystem.

IMO, the subject should be:

[PATCH] staging: rtl8188eu: rtw_mlme: Add spaces around operators

because you are only performing this change on this
single file.

If you were to do this for every single file in the
subsystem, you could have many individual patches with
the exact same subject line.

And it would be good to show in the changelog that you
have compiled the file pre and post patch without object
code change.

Also, it's good to show that git diff -w shows no source
file changes.

> Reported by checkpatch.pl
> 
> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++------------
>  1 file changed, 20 insertions(+), 20 deletions(-)

When I try this using checkpatch --fix-inplace, I get
21 changes against the latest -next tree.

What tree are you doing this against?



