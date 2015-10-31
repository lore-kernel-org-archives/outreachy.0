X-GM-THRID: 6211433707094409216
X-Received: by 10.50.142.103 with SMTP id rv7mr1858692igb.2.1446274626369;
        Fri, 30 Oct 2015 23:57:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.131.196 with SMTP id oo4ls568437obb.53.gmail; Fri, 30 Oct
 2015 23:57:06 -0700 (PDT)
X-Received: by 10.182.22.200 with SMTP id g8mr9860375obf.0.1446274626011;
        Fri, 30 Oct 2015 23:57:06 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id iz5si949105pbc.2.2015.10.30.23.57.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 23:57:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id hk11so94834369pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 23:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=MyrYpm9T/Dv2cv1FDSJZcHXaFJUYiO96JJaTd6DSlUA=;
        b=W5NMz+66MACoRx2ClLDeZZMf3xSQy1DMrBg7GK7M6/xFOXw+QzE6luLUhv7tf1idrf
         55WyW86f03bBaUUJpDUijlNP0ZdYhGuNJ+YHsD9TGgp6jbpkj5xSd8AHyha+1ZVGNvbm
         L5ZmkDupRezxVTaBA3fqV7TzJG3baJPm5PUVh7QQtxYAfWdwc+bqkalDc0TUD0SAHr4h
         dVPotimWVTSMHF2GhQ741NeQM1lUl4CslXoWwHwL0sxyo3Jjl3CfqFl8tKSwcwoN5Blm
         uucMsjO2EBwVPGC+hUnDOcu+fswNevwrCXQINUV0YD0s7chqRXyRUm/5DmhNkaWKgOTk
         oqyQ==
X-Received: by 10.68.69.72 with SMTP id c8mr13158593pbu.2.1446274625849;
        Fri, 30 Oct 2015 23:57:05 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.128.226])
        by smtp.gmail.com with ESMTPSA id ph8sm11937135pbc.8.2015.10.30.23.57.03
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 23:57:04 -0700 (PDT)
Date: Sat, 31 Oct 2015 12:26:59 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: sm750fb: Remove
 unused modedb.h file
Message-ID: <20151031065659.GB5145@sudip-pc>
References: <1446213783-30267-1-git-send-email-shraddha.6596@gmail.com>
 <1446213783-30267-2-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446213783-30267-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 07:33:02PM +0530, Shraddha Barke wrote:
> The header file modedb.h is only included in sm750.c but the things
> defined by modedb.h are not used anywhere in sm750.c. Thus, drop
> the include in sm750.c and modedb.h can be dropped completely.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---

In the original out of tree vendor code this modedb.h was used as:
#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,10)
	pdb[i] = &modedb2[0];
	cdb[i] = nmodedb2;
#endif

But not required here.

Acked-by: Sudip Mukherjee <sudipm.mukherjee@gmail.com>

regards
sudip

