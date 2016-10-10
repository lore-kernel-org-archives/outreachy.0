X-GM-THRID: 6339690897688494080
X-Received: by 10.176.3.47 with SMTP id 44mr8065345uat.28.1476081568156;
        Sun, 09 Oct 2016 23:39:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls9403418ote.9.gmail; Sun, 09 Oct 2016
 23:39:27 -0700 (PDT)
X-Received: by 10.157.27.136 with SMTP id z8mr8535985otd.115.1476081567741;
        Sun, 09 Oct 2016 23:39:27 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x14si2409130vkd.3.2016.10.09.23.39.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 23:39:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,471,1473112800"; 
   d="scan'208";a="196187553"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2016 08:39:25 +0200
Date: Mon, 10 Oct 2016 08:39:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: replace DGNC_VERIFY_BOARD
 macro with dgnc_verify_board function.
In-Reply-To: <20161010043825.GA5438@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610100838240.3260@hadrien>
References: <20161010043825.GA5438@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 10 Oct 2016, Elise Lennion wrote:

> Fix checkpatch warning:
>
> WARNING: Macros with flow control statements should be avoided
>
> Macros with flow control statements should be avoided; they break the flow of the calling function and make it harder to test the code.
>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_sysfs.c | 74 +++++++++++++++++++++++++++------------
>  1 file changed, 51 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
> index 290bf6e..687d67a 100644
> --- a/drivers/staging/dgnc/dgnc_sysfs.c
> +++ b/drivers/staging/dgnc/dgnc_sysfs.c
> @@ -90,17 +90,21 @@ void dgnc_remove_driver_sysfiles(struct pci_driver *dgnc_driver)
>  	driver_remove_file(driverfs, &driver_attr_pollrate);
>  }
>
> -#define DGNC_VERIFY_BOARD(p, bd)				\
> -	do {							\
> -		if (!p)						\
> -			return 0;				\
> -								\
> -		bd = dev_get_drvdata(p);			\
> -		if (!bd || bd->magic != DGNC_BOARD_MAGIC)	\
> -			return 0;				\
> -		if (bd->state != BOARD_READY)			\
> -			return 0;				\
> -	} while (0)
> +static struct dgnc_board *dgnc_verify_board(struct device *p)
> +{
> +	struct dgnc_board *bd;
> +
> +	if (!p)
> +		return 0;
> +
> +	bd = dev_get_drvdata(p);
> +	if (!bd || bd->magic != DGNC_BOARD_MAGIC)
> +		return 0;
> +	if (bd->state != BOARD_READY)
> +		return 0;
> +
> +	return bd;
> +}

This looks like a really nice effort!

However, since the return type is a pointer, it would be better to return
NULL.  The return 0 looks quite odd, because usually 0 is a success value
(while NULL is a failure value).

julia

>
>  static ssize_t vpd_show(struct device *p, struct device_attribute *attr,
>  			char *buf)
> @@ -109,7 +113,9 @@ static ssize_t vpd_show(struct device *p, struct device_attribute *attr,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	count += sprintf(buf + count,
>  		"\n      0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F");
> @@ -130,7 +136,9 @@ static ssize_t serial_number_show(struct device *p,
>  	struct dgnc_board *bd;
>  	int count = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	if (bd->serial_num[0] == '\0')
>  		count += sprintf(buf + count, "<UNKNOWN>\n");
> @@ -148,7 +156,9 @@ static ssize_t ports_state_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		count += snprintf(buf + count, PAGE_SIZE - count,
> @@ -166,7 +176,9 @@ static ssize_t ports_baud_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		count +=  snprintf(buf + count, PAGE_SIZE - count,
> @@ -184,7 +196,9 @@ static ssize_t ports_msignals_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		struct channel_t *ch = bd->channels[i];
> @@ -215,7 +229,9 @@ static ssize_t ports_iflag_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
> @@ -233,7 +249,9 @@ static ssize_t ports_cflag_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
> @@ -251,7 +269,9 @@ static ssize_t ports_oflag_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
> @@ -269,7 +289,9 @@ static ssize_t ports_lflag_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
> @@ -287,7 +309,9 @@ static ssize_t ports_digi_flag_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
> @@ -305,7 +329,9 @@ static ssize_t ports_rxcount_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		count += snprintf(buf + count, PAGE_SIZE - count, "%d %ld\n",
> @@ -323,7 +349,9 @@ static ssize_t ports_txcount_show(struct device *p,
>  	int count = 0;
>  	int i = 0;
>
> -	DGNC_VERIFY_BOARD(p, bd);
> +	bd = dgnc_verify_board(p);
> +	if (!bd)
> +		return 0;
>
>  	for (i = 0; i < bd->nasync; i++) {
>  		count += snprintf(buf + count, PAGE_SIZE - count, "%d %ld\n",
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161010043825.GA5438%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

