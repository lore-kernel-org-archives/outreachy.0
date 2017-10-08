X-GM-THRID: 6474617042668355584
X-Received: by 10.28.230.79 with SMTP id d76mr925452wmh.12.1507489572136;
        Sun, 08 Oct 2017 12:06:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.66 with SMTP id x63ls710717wma.10.gmail; Sun, 08 Oct
 2017 12:06:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD3QarNF293kCTmAkv2M3+J4eTXFmiIFMS34xnyOKuen4acjNeVWBp7XEAGshlME9ca+/G8
X-Received: by 10.28.32.136 with SMTP id g130mr523243wmg.2.1507489571232;
        Sun, 08 Oct 2017 12:06:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507489571; cv=none;
        d=google.com; s=arc-20160816;
        b=Vt3vTpCj2xK6oGn1jrExaoLrFv+qT0uR4ZOm4n1BZAg9iq6hU7nPn+zpI0CWJxFHoa
         RP92hlD4zA+I8aJe+II9I4IFTVJimVfNJkmgjq/yKeLeOjPWYCiEh4NqKpv9JVwXZRGN
         EM34dSr08vLhCujkxa/XzK0CTksRG4ke0l1PLor3KqcAgt+5NbsqurB3pV5+6C7hrHtd
         LkADJ5hIe2rOL0+PMm1OTyRKcyqCF0lBakV+LOKPSl7SPRJT9pyHloORG2t9BMwI8lRR
         8L8vaaBBv/3uZypxzPDowtO7OESwuDrbdABrp8t/6uokcsdlWVTTXVRqbjo6VgHVO7L4
         6XGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=XOBvPL0jxhcwZ7hqtL5lKZ58cPf/IP/oZFSx9wPzz4E=;
        b=btYZ7rCbFU/ycSXIDIIvB7JjZXeb4W60asRt+HIC8YnxGBcb4nk+RMiwLlY+MtBIRY
         IWuVfOHG8LQAz+QEbT7snZx7uAzHnVGspRqCuTPvkxdotZv/+y3Bu6sDsNtwyvxjbGhA
         FJjVmOgZnozXzSnhnLqCzJN+cU8kuv3yCOdIg2emGdLAqMejUFzWWFHqE82gpC87p+ti
         UArvpLhmIrOCEELAQUfPNIhtgwZmhC3VOojNR4DHDouW4ZEIyTP8baE/SQYpTuU5KaGm
         PkwPJufC73/DsA4LSLqz7kKclmp5kHqpAk46u0MZlIsUitbxR24IICt21iuRQN3GMSVG
         6RSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si949486wmj.0.2017.10.08.12.06.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 12:06:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,496,1500933600"; 
   d="scan'208";a="295060388"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2017 21:06:10 +0200
Date: Sun, 8 Oct 2017 21:06:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: pablo@netfilter.org, netfilter-devel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] src: buffer is not null terminated
In-Reply-To: <20171008185825.21202-1-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1710082104010.2160@hadrien>
References: <20171008185825.21202-1-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line is not very clear.  Apparently, some buffer (which one?)
is not null terminated (but what will you do about it?).  It would be
better to say what is done inthe subject line, eg Use snprintf rather than
strncpy, and then as you already do explain why the change is desirable in
the commit log.  Then one is somehow better oriented to what is going on.

julia

On Mon, 9 Oct 2017, Harsha Sharma wrote:

> Use snprintf() over strncpy() functions as the buffer is not null
> terminated in strncpy().
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  src/datatype.c | 2 +-
>  src/iface.c    | 4 ++--
>  src/netlink.c  | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/src/datatype.c b/src/datatype.c
> index 94b1224..9439ea3 100644
> --- a/src/datatype.c
> +++ b/src/datatype.c
> @@ -858,7 +858,7 @@ static uint32_t str2int(char *tmp, const char *c, int k)
>  	if (k == 0)
>  		return 0;
>
> -	strncpy(tmp, c-k, k+1);
> +	snprintf(tmp, k+1, "%s", c-k);
>  	return atoi(tmp);
>  }
>
> diff --git a/src/iface.c b/src/iface.c
> index 9936388..d0e1834 100644
> --- a/src/iface.c
> +++ b/src/iface.c
> @@ -53,7 +53,7 @@ static int data_cb(const struct nlmsghdr *nlh, void *data)
>  	iface = xmalloc(sizeof(struct iface));
>  	iface->ifindex = ifm->ifi_index;
>  	mnl_attr_parse(nlh, sizeof(*ifm), data_attr_cb, tb);
> -	strncpy(iface->name, mnl_attr_get_str(tb[IFLA_IFNAME]), IFNAMSIZ);
> +	snprintf(iface->name, IFNAMSIZ, "%s", mnl_attr_get_str(tb[IFLA_IFNAME]));
>  	list_add(&iface->list, &iface_list);
>
>  	return MNL_CB_OK;
> @@ -139,7 +139,7 @@ char *nft_if_indextoname(unsigned int ifindex, char *name)
>
>  	list_for_each_entry(iface, &iface_list, list) {
>  		if (iface->ifindex == ifindex) {
> -			strncpy(name, iface->name, IFNAMSIZ);
> +			snprintf(name, IFNAMSIZ, "%s", iface->name);
>  			return name;
>  		}
>  	}
> diff --git a/src/netlink.c b/src/netlink.c
> index d5d410a..f69a5b9 100644
> --- a/src/netlink.c
> +++ b/src/netlink.c
> @@ -386,7 +386,7 @@ static void netlink_gen_verdict(const struct expr *expr,
>  	switch (expr->verdict) {
>  	case NFT_JUMP:
>  	case NFT_GOTO:
> -		strncpy(data->chain, expr->chain, NFT_CHAIN_MAXNAMELEN);
> +		snprintf(data->chain, NFT_CHAIN_MAXNAMELEN, "%s", expr->chain);
>  		data->chain[NFT_CHAIN_MAXNAMELEN-1] = '\0';
>  		break;
>  	}
> @@ -2915,7 +2915,7 @@ static int netlink_events_newgen_cb(const struct nlmsghdr *nlh, int type,
>  		case NFTA_GEN_PROC_NAME:
>  			if (mnl_attr_validate(attr, MNL_TYPE_NUL_STRING) < 0)
>  				break;
> -			strncpy(name, mnl_attr_get_str(attr), sizeof(name));
> +			snprintf(name, sizeof(name), "%s", mnl_attr_get_str(attr));
>  			break;
>  		case NFTA_GEN_PROC_ID:
>  			if (mnl_attr_validate(attr, MNL_TYPE_U32) < 0)
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171008185825.21202-1-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

