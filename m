X-GM-THRID: 6256045581066567680
X-Received: by 10.182.53.233 with SMTP id e9mr22417159obp.28.1456944534475;
        Wed, 02 Mar 2016 10:48:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.194 with SMTP id g60ls3988261qge.52.gmail; Wed, 02 Mar
 2016 10:48:53 -0800 (PST)
X-Received: by 10.140.88.139 with SMTP id t11mr4006423qgd.21.1456944533772;
        Wed, 02 Mar 2016 10:48:53 -0800 (PST)
Return-Path: <bounce-md_30481620.56d73595.v1-a76a24574c1947938fb478d4d4e42703@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id g136si2149110ywb.5.2016.03.02.10.48.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:48:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d73595.v1-a76a24574c1947938fb478d4d4e42703@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d73595.v1-a76a24574c1947938fb478d4d4e42703@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d73595.v1-a76a24574c1947938fb478d4d4e42703@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=Fz5DXSg9lQvUzxXF7XpLCYo6Ln8=;
 b=RnZ9Wfhwa/cNDAFV5LvO9c3GU5QnhGzMpYVoGZnbnFdKQyNreFLy6OQo5NmRwWRMQPV02UC71erG
   fA66mKQCx6FflLynkCQdYSuQZPmHnagq1h4FWm4i0Rs6llG5jNCMCjMStowdQ1zhXLGG5Kcjl9SJ
   dZu154LtMeJPxj5FUU8=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=ZQXH3cto1tcfae+eibuvBRlYdCnEWlIt9m7OD1CCjf4eueeHelQpS5Usmv/2NVT4kRjtzZD9h4Eb
   iq9zPdUtLh2YxeAewNjxzF/ZJmqygU4w2tNGPZVQ5S6WvGdFqvUwoiBq1VKnSge6zogXveoPZmsV
   +4dLfrY2AAXgKsTUYEQ=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqpa174noj for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:48:53 +0000 (envelope-from <bounce-md_30481620.56d73595.v1-a76a24574c1947938fb478d4d4e42703@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944533; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=D4oxisk7ihsNV1xUle7+LVRrQVB7sSB1W/5Q1s7Xssc=; 
 b=LO7RJHYQOHK5HAw5EmIdXWKGDMfAyhMZrWHDE2pO+uxu2zVqGAfohZZrxxhqm0jDL37xT3
 uplFFedlnLJuBWX6DbYXBJrmkenOYfW/H/19FegWBB1hEyIKaeQ6vMLrujEcRYpSoO4MqKwf
 W3jX9GlzS8b4vgigbDSDtjAUAhDpY=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: mgc: Bool tests do not need comparison
Return-Path: <bounce-md_30481620.56d73595.v1-a76a24574c1947938fb478d4d4e42703@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id a76a24574c1947938fb478d4d4e42703; Wed, 02 Mar 2016 18:48:53 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302032952.GA14645@kroah.com>
References: <20160227184909.GA2991@Karyakshetra>
In-Reply-To: <20160227184909.GA2991@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.a76a24574c1947938fb478d4d4e42703
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:48:53 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 28, 2016 at 12:19:09AM +0530, Bhaktipriya Shridhar wrote:
> Bool initializations should use true and false thus bool tests don't
> need an explicit comparison.
> 
> This issue was found using the following Coccinelle script:
> @@
> bool x;
> symbol true;
> symbol false;
> @@
> 
> (
> - x == true
> + x
> |
> - true == x
> + x
> |
> - x != true
> + !x
> |
> - true != x
> + !x
> |
> - x == false
> + !x
> |
> - false == x
> + !x
> |
> - x != false
> + x
> |
> - false != x
> + x
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Fixed typo "lusture" to "lustre" in the subject
> 
>  drivers/staging/lustre/lustre/mgc/mgc_request.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> index 6fc8225..aea5fc3 100644
> --- a/drivers/staging/lustre/lustre/mgc/mgc_request.c
> +++ b/drivers/staging/lustre/lustre/mgc/mgc_request.c
> @@ -1394,7 +1394,7 @@ again:
>  	eof = res->mcr_offset == res->mcr_size;
> 
>  	CDEBUG(D_INFO, "Latest version %lld, more %d.\n",
> -	       res->mcr_offset, eof == false);
> +	       res->mcr_offset, !eof);

eek, that's horrid to try to read, can you understand that now?

Please don't do that.

greg k-h

