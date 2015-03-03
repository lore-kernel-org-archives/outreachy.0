X-GM-THRID: 5994634543104
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,80407baedae78f34
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.141.113 with SMTP id rn17mr395396vdb.0.1425408391881;
        Tue, 03 Mar 2015 10:46:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.199 with SMTP id ik7ls74639obb.88.gmail; Tue, 03 Mar
 2015 10:46:31 -0800 (PST)
X-Received: by 10.182.148.164 with SMTP id tt4mr356129obb.30.1425408391613;
        Tue, 03 Mar 2015 10:46:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ks4si221655pbc.1.2015.03.03.10.46.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 10:46:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.0.216])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4AF85AF3;
	Tue,  3 Mar 2015 18:46:31 +0000 (UTC)
Date: Tue, 3 Mar 2015 08:55:13 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieeee80211: Add
 sapace before '{' and after '}'
Message-ID: <20150303165513.GA14650@kroah.com>
References: <1425316465-16949-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1425316465-16949-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 02, 2015 at 07:14:25PM +0200, Hatice ERT�RK wrote:
> Space required before the open brace '{' and after the close brace '}'
> This Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 184 ++++++++++-----------
>  1 file changed, 92 insertions(+), 92 deletions(-)

This does not apply to my tree at all.  Please refresh it against the
latest staging-testing branch of staging.git and resend.

thanks,

greg k-h

