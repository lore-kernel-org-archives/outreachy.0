X-GM-THRID: 6254088718103085056
X-Received: by 10.194.84.40 with SMTP id v8mr3328903wjy.2.1456144701001;
        Mon, 22 Feb 2016 04:38:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.205.78 with SMTP id d75ls360215lfg.2.gmail; Mon, 22 Feb
 2016 04:38:20 -0800 (PST)
X-Received: by 10.112.170.7 with SMTP id ai7mr3240735lbc.1.1456144700326;
        Mon, 22 Feb 2016 04:38:20 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v197si835316wmv.1.2016.02.22.04.38.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:38:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,484,1449529200"; 
   d="scan'208";a="204112783"
Received: from 68-74-177-106.lightspeed.wepbfl.sbcglobal.net (HELO hadrien) ([68.74.177.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2016 13:38:19 +0100
Date: Mon, 22 Feb 2016 07:38:17 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Replace simple_strtoul
 with kstrtoul
In-Reply-To: <20160222121811.GA21856@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1602220737380.2532@hadrien>
References: <20160222121811.GA21856@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 22 Feb 2016, Amitoj Kaur Chawla wrote:

> Replace obsolete simple_strtoul with kstrtoul.
> The Coccinelle semantic patch used to make this change is as follows:

Check on the use of temp.  In teh second case it is used after the call.
I believe that the call is supposed to update the pointer, but you can
check on that.

julia

> // <smpl>
> @@
> unsigned long l;
> expression e,f,g;
> @@
> - l = simple_strtoul(e, &f, g)
> + kstrtoul(e, g, &l)
> // </smpl>
>
> Additionally, since kstrtoul returns 0 on success and an error code on
> failure introduced `err` variable to store and return the error code.
> This change was made by hand.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index fdfeb42..f626084 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -125,7 +125,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  	int reset = 0;
>  	int do_characters = !strcmp(attr->attr.name, "characters");
>  	size_t desc_length = 0;
> -	int i;
> +	int i, err;
>
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
>  	while (cp < end) {
> @@ -153,7 +153,9 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>
> -		index = simple_strtoul(cp, &temp, 10);
> +		err = kstrtoul(cp, 10, &index);
> +		if (err)
> +			return err;
>  		if (index > 255) {
>  			rejected++;
>  			cp = linefeed + 1;
> @@ -757,6 +759,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  	enum msg_index_t firstmessage = group->start;
>  	enum msg_index_t lastmessage = group->end;
>  	enum msg_index_t curmessage;
> +	int err;
>
>  	while (cp < end) {
>
> @@ -783,7 +786,9 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  			continue;
>  		}
>
> -		index = simple_strtoul(cp, &temp, 10);
> +		err = kstrtoul(cp, 10, &index);
> +		if (err)
> +			return err;
>
>  		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
>  			temp++;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160222121811.GA21856%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

