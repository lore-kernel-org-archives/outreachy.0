X-GM-THRID: 6394098125937573888
X-Received: by 10.46.69.7 with SMTP id s7mr1818652lja.18.1488742265540;
        Sun, 05 Mar 2017 11:31:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.26 with SMTP id y26ls1373342lja.2.gmail; Sun, 05 Mar
 2017 11:31:04 -0800 (PST)
X-Received: by 10.25.196.68 with SMTP id u65mr1574430lff.0.1488742264928;
        Sun, 05 Mar 2017 11:31:04 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si14013wmg.3.2017.03.05.11.31.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 11:31:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,249,1484002800"; 
   d="scan'208";a="263201009"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 20:30:48 +0100
Date: Sun, 5 Mar 2017 20:30:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drivers: staging: speakup: kobjects:
 Delete spaces
In-Reply-To: <20170305192517.18409-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703052030230.3052@hadrien>
References: <20170305192517.18409-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 5 Mar 2017, Tamara Diaconita wrote:

> Deleted spaces to fix the following checkpath.pl issue:
> CHECK: No space is necessary after a cast.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/speakup/kobjects.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 37ee6dd..c442d95 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -109,7 +109,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  				   struct kobj_attribute *attr, const char *buf,
>  				   size_t count)
>  {
> -	char *cp = (char *) buf;
> +	char *cp = (char *)buf;
>  	char *end = cp + count; /* the null at the end of the buffer */
>  	char *linefeed = NULL;
>  	char keyword[MAX_DESC_LEN + 1];
> @@ -476,7 +476,7 @@ static ssize_t punc_show(struct kobject *kobj, struct kobj_attribute *attr,
>  	}
>
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
> -	pb = (struct st_bits_data *) &spk_punc_info[var->value];
> +	pb = (struct st_bits_data *)&spk_punc_info[var->value];
>  	mask = pb->mask;
>  	for (i = 33; i < 128; i++) {
>  		if (!(spk_chartab[i] & mask))
> @@ -553,7 +553,7 @@ ssize_t spk_var_show(struct kobject *kobj, struct kobj_attribute *attr,
>  		return -EINVAL;
>
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
> -	var = (struct var_t *) param->data;
> +	var = (struct var_t *)param->data;
>  	switch (param->var_type) {
>  	case VAR_NUM:
>  	case VAR_TIME:
> @@ -745,7 +745,7 @@ static void report_msg_status(int reset, int received, int used,
>  static ssize_t message_store_helper(const char *buf, size_t count,
>  				    struct msg_group_t *group)
>  {
> -	char *cp = (char *) buf;
> +	char *cp = (char *)buf;
>  	char *end = cp + count;
>  	char *linefeed = NULL;
>  	char *temp = NULL;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170305192517.18409-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

