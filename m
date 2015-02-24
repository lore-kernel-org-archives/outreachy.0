X-GM-THRID: 983245520896
X-Received: by 10.50.109.202 with SMTP id hu10mr18735359igb.4.1424820006775;
        Tue, 24 Feb 2015 15:20:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.194 with SMTP id h2ls402457obe.37.gmail; Tue, 24 Feb
 2015 15:20:06 -0800 (PST)
X-Received: by 10.182.126.196 with SMTP id na4mr408551obb.18.1424820006593;
        Tue, 24 Feb 2015 15:20:06 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si694371pdc.0.2015.02.24.15.20.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 15:20:06 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [216.239.55.136])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 40722B1B;
	Tue, 24 Feb 2015 23:20:06 +0000 (UTC)
Date: Tue, 24 Feb 2015 15:20:06 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: media: vino: Add blank
 line
Message-ID: <20150224232006.GA24529@kroah.com>
References: <1424379952-21236-1-git-send-email-ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424379952-21236-1-git-send-email-ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 19, 2015 at 10:05:52PM +0100, Ksenija Stanojevic wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "Missing a blank line after declarations"
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v3: Use of imperative language(add instead of added).
> v2: Fixed e-mail address.
>  drivers/staging/media/vino/saa7191.c | 1 +

This file is no longer in the tree, so I can't accept a patch for it,
sorry :(

