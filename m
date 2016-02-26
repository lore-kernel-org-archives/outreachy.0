X-GM-THRID: 6253750869458681856
X-Received: by 10.129.72.199 with SMTP id v190mr45096791ywa.44.1456467367539;
        Thu, 25 Feb 2016 22:16:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.191.9 with SMTP id gu9ls417997obc.57.gmail; Thu, 25 Feb
 2016 22:16:07 -0800 (PST)
X-Received: by 10.182.72.137 with SMTP id d9mr44584318obv.31.1456467367198;
        Thu, 25 Feb 2016 22:16:07 -0800 (PST)
Return-Path: <bounce-md_30481620.56cfeda6.v1-0974074784e744aea7f324cf66cfe051@mandrillapp.com>
Received: from mail132-22.atl131.mandrillapp.com (mail132-22.atl131.mandrillapp.com. [198.2.132.22])
        by gmr-mx.google.com with ESMTPS id g136si708205ywb.5.2016.02.25.22.16.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:16:07 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cfeda6.v1-0974074784e744aea7f324cf66cfe051@mandrillapp.com designates 198.2.132.22 as permitted sender) client-ip=198.2.132.22;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cfeda6.v1-0974074784e744aea7f324cf66cfe051@mandrillapp.com designates 198.2.132.22 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cfeda6.v1-0974074784e744aea7f324cf66cfe051@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=fIcBEDGVVWft59n8ka+0Q9/Wy3c=;
 b=VDTp5a0cw0J9kINWTOoxyYwyOub7TRpUY1Vh3C9qz8C1h0ZjxNm1Rk5TmuHasLCaKaB1LGEEx6c2
   VHEdVQCY6DvpZugVPHTLdGYIHCyg8X0A0XOxanl7nZLE8LH5PBq/3i0MgYLQZ8OXcq2nUke4CApj
   xqGhM2YFzmbLrRMjp7M=
Received: from pmta02.mandrill.prod.atl01.rsglab.com (127.0.0.1) by mail132-22.atl131.mandrillapp.com id hpvmqe1sar8h for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:16:07 +0000 (envelope-from <bounce-md_30481620.56cfeda6.v1-0974074784e744aea7f324cf66cfe051@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456467366; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=ggBccjUb2nR4RXIaRK7qM3uWtoCFGfPZGjEUr7TESXM=; 
 b=lJcbc4vkqzba5me9UuMQA577m1Unkz8Osv9YIS4JN2USLvQj0Qdj2ZDxPFM878uaknfNuw
 YtiQg6zTLyI7pV/Z4gVsxFFW2SalW3Yaz9pJbmVCDDL4t4083cl+dN6J3eRuyspoqzcWJ0zy
 t8YsFjfvOjizSbrAbOS9g/4yhgNXU=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Replace comparision "page != NULL" to "page"
Return-Path: <bounce-md_30481620.56cfeda6.v1-0974074784e744aea7f324cf66cfe051@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 0974074784e744aea7f324cf66cfe051; Fri, 26 Feb 2016 06:16:06 +0000
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226061606.GA21950@kroah.com>
References: <20160221062704.GA3416@sandhya>
In-Reply-To: <20160221062704.GA3416@sandhya>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.0974074784e744aea7f324cf66cfe051
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:16:06 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 21, 2016 at 11:57:04AM +0530, Sandhya Bankar wrote:
> Replace comparision  "page != NULL" to "page"
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lustre/obdclass/cl_page.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/obdclass/cl_page.c b/drivers/staging/lustre/lustre/obdclass/cl_page.c
> index 61f28eb..88ee72b 100644
> --- a/drivers/staging/lustre/lustre/obdclass/cl_page.c
> +++ b/drivers/staging/lustre/lustre/obdclass/cl_page.c
> @@ -284,7 +284,7 @@ static struct cl_page *cl_page_alloc(const struct lu_env *env,
>  	struct lu_object_header *head;
>  
>  	page = kzalloc(cl_object_header(o)->coh_page_bufsize, GFP_NOFS);
> -	if (page != NULL) {
> +	if (page) {
>  		int result = 0;
>  
>  		atomic_set(&page->cp_ref, 1);

Doesn't apply to the tree :(

