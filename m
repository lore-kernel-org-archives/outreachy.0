X-GM-THRID: 8110844411904
X-Received: by 10.140.201.202 with SMTP id w193mr12573541qha.7.1426416063909;
        Sun, 15 Mar 2015 03:41:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.195 with SMTP id x186ls7095iod.16.gmail; Sun, 15 Mar
 2015 03:41:03 -0700 (PDT)
X-Received: by 10.50.43.229 with SMTP id z5mr3807384igl.3.1426416063710;
        Sun, 15 Mar 2015 03:41:03 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1284593pac.0.2015.03.15.03.41.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:41:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8B3F78CF;
	Sun, 15 Mar 2015 10:41:02 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:40:59 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Somya Anand <somyaanand214@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: sm750fb: Move assignment
 out of if statement
Message-ID: <20150315104059.GA20220@kroah.com>
References: <1426267392-27533-1-git-send-email-somyaanand214@gmail.com>
 <1426267392-27533-2-git-send-email-somyaanand214@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426267392-27533-2-git-send-email-somyaanand214@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 13, 2015 at 10:53:12PM +0530, Somya Anand wrote:
> Checkpatch.pl suggest to avoid assignment in if statement.
> 
> This patch moves assignments out of the if statement and place
> it before the if statement. This is done using following coccinelle
> script.
> 
> @@
> expression E1;
> identifier p;
> statement S;
> @@
> - if ((p = E1))
> + p = E1;
> + if (p)
>         S
> 
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_hw.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Doesn't apply to my tree :(

