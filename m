X-GM-THRID: 9883922464768
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,43bcc47290023623
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.60.131 with SMTP id ws3mr34977384icb.13.1427362733298;
        Thu, 26 Mar 2015 02:38:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.2 with SMTP id y2ls624932ioi.2.gmail; Thu, 26 Mar 2015
 02:38:53 -0700 (PDT)
X-Received: by 10.43.16.70 with SMTP id px6mr36600146icb.28.1427362733014;
        Thu, 26 Mar 2015 02:38:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si624214pac.1.2015.03.26.02.38.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 02:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1EE77A79;
	Thu, 26 Mar 2015 09:38:51 +0000 (UTC)
Date: Thu, 26 Mar 2015 10:38:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Helen Fornazier <helen.fornazier@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] block: Use kcalloc instead of kzalloc
 to initialize array
Message-ID: <20150326093849.GA20410@kroah.com>
References: <1427328243-6391-1-git-send-email-helen.fornazier@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427328243-6391-1-git-send-email-helen.fornazier@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 25, 2015 at 09:04:03PM -0300, Helen Fornazier wrote:
> This patch fixes checkpatch.pl warning:
> 
> WARNING: Prefer kcalloc over kzalloc with multiply
> +       bio_slabs = kzalloc(bio_slab_max * sizeof(struct bio_slab), GFP_KERNEL);
> 
> Signed-off-by: Helen Fornazier <helen.fornazier@gmail.com>
> ---
>  block/bio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

The outreachy application process can only accept patches made in
drivers/staging/* so there's nothing I can do with these block patches,
sorry.

greg k-h

