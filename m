X-GM-THRID: 6394683262663393280
X-Received: by 10.46.84.13 with SMTP id i13mr220105ljb.2.1488903061427;
        Tue, 07 Mar 2017 08:11:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.81.10 with SMTP id f10ls93066ljb.44.gmail; Tue, 07 Mar 2017
 08:11:01 -0800 (PST)
X-Received: by 10.46.88.9 with SMTP id m9mr212687ljb.25.1488903061005;
        Tue, 07 Mar 2017 08:11:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si354650wmg.3.2017.03.07.08.11.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 08:11:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,258,1484002800"; 
   d="scan'208";a="215910413"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 17:10:53 +0100
Date: Tue, 7 Mar 2017 17:10:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: kobjects: Rearrange
 if statement
In-Reply-To: <20170307091646.13717-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703071709390.3150@hadrien>
References: <20170307091646.13717-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


On Tue, 7 Mar 2017, Tamara Diaconita wrote:

> Fixed the checkpath.pl issue:
> CHECK: line over 80 characters.
>
> Put a part of the if statement on a new line to have less than 80
> characters.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 6 ++++--

You have a bunch of patches on the same file.  In this case they need to
be in a series, even if they don't overlap. Otherwise, the recipient has
to spend time figuring out that they don't overlap.

julia

>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index cd8eb12..a032932 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -106,7 +106,8 @@ static void report_char_chartab_status(int reset, int received, int used,
>   * This is called when a user changes the characters or chartab parameters.
>   */
>  static ssize_t chars_chartab_store(struct kobject *kobj,
> -				   struct kobj_attribute *attr, const char *buf, size_t count)
> +				   struct kobj_attribute *attr,
> +				   const char *buf, size_t count)
>  {
>  	char *cp = (char *)buf;
>  	char *end = cp + count; /* the null at the end of the buffer */
> @@ -404,7 +405,8 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
>   * This is called when text is sent to the synth via the synth_direct file.
>   */
>  static ssize_t synth_direct_store(struct kobject *kobj,
> -				  struct kobj_attribute *attr, const char *buf, size_t count)
> +				  struct kobj_attribute *attr,
> +				  const char *buf, size_t count)
>  {
>  	u_char tmp[256];
>  	int len;
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170307091646.13717-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

