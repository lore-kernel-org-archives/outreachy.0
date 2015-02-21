X-GM-THRID: 1068226314240
X-Received: by 10.181.29.66 with SMTP id ju2mr78626wid.1.1424493040103;
        Fri, 20 Feb 2015 20:30:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.242.164 with SMTP id wr4ls385974lac.79.gmail; Fri, 20 Feb
 2015 20:30:39 -0800 (PST)
X-Received: by 10.152.26.74 with SMTP id j10mr118323lag.10.1424493039504;
        Fri, 20 Feb 2015 20:30:39 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id ew5si237301wid.1.2015.02.20.20.30.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 20:30:39 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f45.google.com with SMTP id k14so16529078wgh.4
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 20:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=pAldOz6SIOM9HbMqP3nZqjXuHmyQR5kwF1mUiL5afgc=;
        b=bN1K+Tw/6LzVnvDPMAR3mRFq93cosmGRnwnI15OGZjbUhnd/ufqjHjYgvxiTEZukfx
         fP1CA3HovFN7KrdII2beUOAcNYqn9rQPqkGfsQE9wVkVr9vwNjn3fWp1uqDPt7OPiZHe
         oJSIIDDSFCrwuq8TJiso4rVVWryu23R1dBOz9LPGrN+9heErlbcffJqt9VFgi+fTyMFF
         Lj7xQvIO4gQZwnJzjMxwNPKu9nPLl0Hrbjh+yYR+ZZgIaEWRk9aWuo4FCkBjMku9Htdz
         uuZ1/wsgZjXQIH5YX2QcXkZpHTyjPwGki074gzfYs+Q1ljKXgczZSSRt4ozZxszVdunN
         dLOA==
X-Received: by 10.180.85.39 with SMTP id e7mr981130wiz.90.1424493039384;
        Fri, 20 Feb 2015 20:30:39 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.214.14])
        by mx.google.com with ESMTPSA id p1sm5270658wib.23.2015.02.20.20.30.37
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 20:30:38 -0800 (PST)
Date: Sat, 21 Feb 2015 06:30:35 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>, julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Use #include <linux/uaccess.h>
 instead of <asm/uaccess.h>
Message-ID: <20150221043035.GA12042@localhost.localdomain>
References: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
 <54E6E6C0.1090605@linux.vnet.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <54E6E6C0.1090605@linux.vnet.ibm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 01:18:16PM +0530, Preeti U Murthy wrote:
> Hi Aya,
> 
> On 02/20/2015 07:13 AM, Aya Mahfouz wrote:
> > This patchset replaces <asm/uaccess.h> by <linux/uaccess.h>. The
> > replacements is safe since the header file <linux/uaccess.h> includes
> > <asm/uaccess.h>
> 
> Like Julia mentioned its a thoughtful comment. Such explanations are
> encouraged. However, it will be more valuable to include the above
> explanation in the changelogs of the patches also since those go into
> the git log of the kernel. The cover letter contains an overview of the
> patchset to help the reviewers. They do not get documented in the
> history of changes to the kernel. Would you therefore be able to resend
> this as a fresh version including the above lines in the changelog of
> the individual patches?
> 
> Regards
> Preeti U Murthy

Thank you Julia and Preeti for your comments. I will not send a new
version of this patch since the driver will be out of staging as Julia
stated in another thread. However, I will keep your advice in mind for
future patches.

Kind Regards,
Aya Saif El-yazal Mahfouz

> > 
> > Aya Mahfouz (2):
> >   staging: i2o: Use #include <linux/uaccess.h> instead of
> >     <asm/uaccess.h>
> >   staging: i2o: Use #include <linux/uaccess.h> instead of
> >     <asm/uaccess.h>
> > 
> >  drivers/staging/i2o/i2o_config.c | 3 +--
> >  drivers/staging/i2o/i2o_proc.c   | 2 +-
> >  2 files changed, 2 insertions(+), 3 deletions(-)
> > 
> 

