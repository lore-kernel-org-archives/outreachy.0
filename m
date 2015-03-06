X-GM-THRID: 6124910673920
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a89bdde1b6c62ed
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.61.197 with SMTP id w45mr17379513yhc.54.1425725818878;
        Sat, 07 Mar 2015 02:56:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.36.195 with SMTP id k186ls447116iok.18.gmail; Sat, 07 Mar
 2015 02:56:58 -0800 (PST)
X-Received: by 10.43.1.71 with SMTP id np7mr11157518icb.15.1425725818731;
        Sat, 07 Mar 2015 02:56:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1714056pac.0.2015.03.07.02.56.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2015 02:56:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CDCE2990;
	Sat,  7 Mar 2015 10:56:57 +0000 (UTC)
Date: Fri, 6 Mar 2015 15:53:54 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: Move
 '{' up one line
Message-ID: <20150306235354.GA27270@kroah.com>
References: <1425653007-15415-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425653007-15415-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 06, 2015 at 04:43:27PM +0200, Hatice ERT�RK wrote:
> That open brace '{' should be on the previous line.
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 99 ++++++++---------------
>  1 file changed, 33 insertions(+), 66 deletions(-)

This patch doesn't apply at all, what did you make it against?

