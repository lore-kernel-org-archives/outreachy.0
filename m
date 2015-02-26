X-GM-THRID: 2431942393856
X-Received: by 10.42.235.15 with SMTP id ke15mr409226icb.8.1424986559803;
        Thu, 26 Feb 2015 13:35:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.200 with SMTP id s8ls338700igr.37.gmail; Thu, 26 Feb
 2015 13:35:59 -0800 (PST)
X-Received: by 10.68.241.163 with SMTP id wj3mr9896498pbc.8.1424986559635;
        Thu, 26 Feb 2015 13:35:59 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id nt14si245059pab.2.2015.02.26.13.35.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:35:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 65E4EB14;
	Thu, 26 Feb 2015 21:35:59 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:35:59 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: rtl8192u: Convert
 comments from C99 to C89 style
Message-ID: <20150226213559.GA26669@kroah.com>
References: <cover.1424619767.git.ksenija.stanojevic@gmail.com>
 <b62ce2160ca51b14093fb75772bef5b27cb14993.1424619767.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b62ce2160ca51b14093fb75772bef5b27cb14993.1424619767.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 04:52:58PM +0100, Ksenija Stanojevic wrote:
> Remove linux/config.h because it is not used in modern linux versions
> and replace C99 comments with C89.
> Issue found by checkpatch.pl.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> 
> ---
> v2: remove linux/config.h and format comment.
> v3: change commit message.
>  .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 52 +++++++++++-----------
>  1 file changed, 26 insertions(+), 26 deletions(-)

This series fails to apply to the tree now, as someone else already did
these same changes :(

