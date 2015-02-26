X-GM-THRID: 1771791450112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5864b10778fbf19e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.66.196 with SMTP id h4mr9827317pat.5.1424984471706;
        Thu, 26 Feb 2015 13:01:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.96.33 with SMTP id dp1ls123620obb.69.gmail; Thu, 26 Feb
 2015 13:01:11 -0800 (PST)
X-Received: by 10.182.231.199 with SMTP id ti7mr8493953obc.7.1424984471480;
        Thu, 26 Feb 2015 13:01:11 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bx1si236459pdb.2.2015.02.26.13.01.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:01:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 19124B3C;
	Thu, 26 Feb 2015 21:01:10 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:01:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Add blank line
Message-ID: <20150226210109.GA27557@kroah.com>
References: <1424523035-8717-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424523035-8717-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 02:50:35PM +0200, Yeliz Taneroglu wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "Missing a blank line after declarations"
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/rts5208/general.c | 1 +
>  1 file changed, 1 insertion(+)

This change is already in Linus's tree :(

