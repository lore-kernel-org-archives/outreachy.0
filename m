X-GM-THRID: 6260489275457929216
X-Received: by 10.50.65.69 with SMTP id v5mr3673177igs.13.1457634785745;
        Thu, 10 Mar 2016 10:33:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.98.234 with SMTP id o97ls1942877qge.31.gmail; Thu, 10 Mar
 2016 10:33:05 -0800 (PST)
X-Received: by 10.31.168.130 with SMTP id r124mr3726899vke.10.1457634785225;
        Thu, 10 Mar 2016 10:33:05 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-ob0-x22a.google.com (mail-ob0-x22a.google.com. [2607:f8b0:4003:c01::22a])
        by gmr-mx.google.com with ESMTPS id nt4si303407igb.2.2016.03.10.10.33.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 10:33:05 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) client-ip=2607:f8b0:4003:c01::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4003:c01::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22a.google.com with SMTP id ts10so89608895obc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 10:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=o3YWqASuAplyCjcXLsc0nogpqBg7iFCF86p9TGTNoaM=;
        b=EfDDPi1FjbPIgz9TyPB4/HtcKQICO8HhtID5nfr2Tt2+LVOyt1SLSWjZY6FvtlyyKN
         0OD2sVjBMHyC9V8SIEK3KgnojbHMJzclfKbWo2Acwz05mdJa8A5zbCH27TgwAuMv6sVB
         XMlgoCa7yCJNQcQYHX6wiCrXDVQubk/X+4NUshBNcXiKw7Uyj8Ez7H1eNop/2P61LGpH
         W/V5XfqdKMcZIBWHhuMypusV0++bmFFRb/hH1pYeKS6jBqls62siCZ+r0c6rFXA2wlCQ
         bF5YFwwP8JIEnJOLOlMm32RsMoGXlVY+4n0OQbHAgQT2ErHVMTF0NtVR6Da3RmMWbqY8
         grdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=o3YWqASuAplyCjcXLsc0nogpqBg7iFCF86p9TGTNoaM=;
        b=SL+aSsfqCeVopLUqiXrIUhfHy8wUo/HuyA1ksTR71GSbplZkManmBtshDOcEBHT1GH
         JwFVSZmOg2BQ8T9QMLzMhbqErHdXiZ8Xnvx3rOYiJARF4lYYmaT4jS91NmMGGbyoBs5K
         Q1GjuHyFbahvFSA9PRTDSzHK+iXIuil8hvRRGIs8O6xYtA0mmx74mXRL0a1SGmBSKptX
         kaeYbJCtZLumth3KXQ+JipGyHrkqrIRMeWGwtAFKm/uPPY6JL9IJYd28EYkkpBio5rJT
         GDs3f5xjXf30VTsxI5p52SER4wyd98R/pbKgss20SK3zSlEIERG6Ueff/9g6/yn/lFZz
         8CRA==
X-Gm-Message-State: AD7BkJKOGvaoyUYMXHuxtnf0xds5w6+u9fVHqTxRh5YfWc1dWHrItRToWrJk4jw2snR5p/3whNf6sNTpN40KZg==
X-Received: by 10.182.230.6 with SMTP id su6mr3006179obc.16.1457634785019;
 Thu, 10 Mar 2016 10:33:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.60.159.200 with HTTP; Thu, 10 Mar 2016 10:32:25 -0800 (PST)
In-Reply-To: <20160310181537.GA16699@sonyv>
References: <20160310181537.GA16699@sonyv>
From: Shivani Bhardwaj <shivanib134@gmail.com>
Date: Fri, 11 Mar 2016 00:02:25 +0530
Message-ID: <CAKHNQQGPvSmQP9R3omAuo1hbnOHPrsWhxkmsB7npxKM97v++Fw@mail.gmail.com>
Subject: Re: [PATCH] extensions: libipt_LOG: Avoid to print the default log
 level in the translation
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>, 
	Pablo Neira Ayuso <pablo@netfilter.org>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 10, 2016 at 11:45 PM, Laura Garcia Liebana <nevola@gmail.com> wrote:
> Avoid to print the log level in the translation when the level is the
> default value.
>
> Example:
>
> $ sudo iptables-translate -t filter -A INPUT -m icmp ! --icmp-type 10 -j LOG
> nft add rule ip filter INPUT icmp type != router-solicitation counter log
>

Looks good. Don't forget to send a patch for libip6t_LOG too.

Same is the case with reject as well. When I did the translations, I
left its default nature intact.
$ sudo ip6tables-translate -A FORWARD -p TCP --dport 22 -j REJECT
nft add rule ip6 filter FORWARD tcp dport 22 counter reject with
icmpv6 type port-unreachable

Pablo, should this be corrected too?

Laura, may be you can send more patches depending on his response.

Thanks.

> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
>  extensions/libipt_LOG.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/extensions/libipt_LOG.c b/extensions/libipt_LOG.c
> index f3875b6..216b1ca 100644
> --- a/extensions/libipt_LOG.c
> +++ b/extensions/libipt_LOG.c
> @@ -194,7 +194,8 @@ static int LOG_xlate(const struct xt_entry_target *target,
>                 xt_xlate_add(xl, "prefix \\\"%s\\\" ", loginfo->prefix);
>
>         for (i = 0; i < ARRAY_SIZE(ipt_log_xlate_names); ++i)
> -               if (loginfo->level == ipt_log_xlate_names[i].level) {
> +               if (loginfo->level != LOG_DEFAULT_LEVEL &&
> +                   loginfo->level == ipt_log_xlate_names[i].level) {
>                         xt_xlate_add(xl, "level %s ",
>                                    ipt_log_xlate_names[i].name);
>                         break;
> --
> 2.7.0
>

