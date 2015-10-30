X-GM-THRID: 6211302879745015808
X-Received: by 10.13.209.70 with SMTP id t67mr5051777ywd.46.1446189324601;
        Fri, 30 Oct 2015 00:15:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.53 with SMTP id g50ls565165qgf.98.gmail; Fri, 30 Oct
 2015 00:15:23 -0700 (PDT)
X-Received: by 10.13.225.137 with SMTP id k131mr4897318ywe.37.1446189323806;
        Fri, 30 Oct 2015 00:15:23 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si583670pac.2.2015.10.30.00.15.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 00:15:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fv9so68427786pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 00:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=KeDIi8QVZ8Jg5IlJi5fDMo3Kf72s/QVq8Zs9R3qqqvY=;
        b=xOTAF/aVy2vL0xCI8aQ5hPRJFjrIDHXmTpaX/M9RbViN3jWKmz++nhIqjdjrMWeuRU
         K56CI6zkD4A045dZCoCGpBD4DXVPyJwegS4EOQwR4sulCUu65rD1WkcU95U1ArXyMeta
         0xsYt+5Z+z/EZDh6Y0OOZxUQSdsJJ7yyD4uyiJxKw0RIh5pNSrr33p5BD1nnibrt7wq7
         MMN+/dzSItGUU9MzcPY2qzZAer693UXXhUcvLmyyrNLYEveTa14xsD94x3VqRtJonJIQ
         Ur65eqSRTXlvtsBqgW9EMCrUe3lmUOXfX3HDk2QASM/izaBuL/vEMTD28516L6seQRpz
         K1uA==
X-Received: by 10.66.153.139 with SMTP id vg11mr6987019pab.118.1446189323651;
        Fri, 30 Oct 2015 00:15:23 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id cs5sm6246868pbc.15.2015.10.30.00.15.21
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 00:15:22 -0700 (PDT)
Date: Fri, 30 Oct 2015 12:45:17 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: comedi: ni_mio_common:
 Fix endian sparse warning
Message-ID: <20151030071517.GB31483@sudip-pc>
References: <cover.1446181130.git.ksenija.stanojevic@gmail.com>
 <59f1545cfe6cadeeb4e23ea099df3dab1ff9e6a3.1446181130.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <59f1545cfe6cadeeb4e23ea099df3dab1ff9e6a3.1446181130.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 29, 2015 at 10:22:45PM -0700, Ksenija Stanojevic wrote:
> Data is pointer of type void and can be used to store any type of data.
> In function ni_ai_munge:
> barray and array have the same 16 bit offset.
> blarray and larray have the same 32 bit offset.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---

Yes, it introduces build warning. You will have to do the change in such
a way that it does not introduce any new warnings.

regards
sudip

