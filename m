X-GM-THRID: 10068144685056
X-Received: by 10.236.31.97 with SMTP id l61mr18568894yha.10.1427411152127;
        Thu, 26 Mar 2015 16:05:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.103 with SMTP id k100ls787062iod.15.gmail; Thu, 26 Mar
 2015 16:05:51 -0700 (PDT)
X-Received: by 10.42.99.140 with SMTP id w12mr38666704icn.12.1427411151551;
        Thu, 26 Mar 2015 16:05:51 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id oc12si25402pdb.1.2015.03.26.16.05.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2015 16:05:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 636C289D;
	Thu, 26 Mar 2015 23:05:49 +0000 (UTC)
Date: Fri, 27 Mar 2015 00:05:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: rtl8192u: Remove extern
 and add static
Message-ID: <20150326230547.GA13524@kroah.com>
References: <cover.1427397436.git.vatikaharlalka@gmail.com>
 <848f4ec0238f31522dac7dc409d4a49df6afda05.1427397436.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <848f4ec0238f31522dac7dc409d4a49df6afda05.1427397436.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 27, 2015 at 12:59:19AM +0530, Vatika Harlalka wrote:
> These functions are accessed only in this file and
> so are declared as static.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8192u/r8192U_core.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

This doesn't apply to my tree at all :(

