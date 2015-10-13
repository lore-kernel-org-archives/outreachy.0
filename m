X-GM-THRID: 6203096899740762112
X-Received: by 10.129.56.7 with SMTP id f7mr26847293ywa.52.1444714819429;
        Mon, 12 Oct 2015 22:40:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.118 with SMTP id i109ls1578322qgf.50.gmail; Mon, 12
 Oct 2015 22:40:18 -0700 (PDT)
X-Received: by 10.31.154.19 with SMTP id c19mr27228159vke.13.1444714818905;
        Mon, 12 Oct 2015 22:40:18 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id el2si154638pbb.0.2015.10.12.22.40.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 22:40:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (24-104-73-12-ip-static.hfc.comcastbusiness.net [24.104.73.12])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5B9B5282;
	Tue, 13 Oct 2015 05:40:18 +0000 (UTC)
Date: Mon, 12 Oct 2015 20:33:08 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove multiple
 blank lines
Message-ID: <20151013033308.GA32261@kroah.com>
References: <20151009062738.GA20505@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151009062738.GA20505@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Oct 09, 2015 at 11:57:38AM +0530, Amitoj Kaur Chawla wrote:
> Remove multiple blank lines. Problem found using checkpatch.pl
> CHECK: Please don't use multiple blank lines
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 3 ---
>  1 file changed, 3 deletions(-)

This doesn't apply to my staging-testing branch :(

