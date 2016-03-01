X-GM-THRID: 6256826514740871168
X-Received: by 10.112.156.33 with SMTP id wb1mr2182253lbb.7.1456825925530;
        Tue, 01 Mar 2016 01:52:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.138.8 with SMTP id m8ls608759lfd.21.gmail; Tue, 01 Mar 2016
 01:52:04 -0800 (PST)
X-Received: by 10.112.141.33 with SMTP id rl1mr2254162lbb.9.1456825924463;
        Tue, 01 Mar 2016 01:52:04 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wm0-x22d.google.com (mail-wm0-x22d.google.com. [2a00:1450:400c:c09::22d])
        by gmr-mx.google.com with ESMTPS id c7si176233wmf.2.2016.03.01.01.52.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 01:52:04 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) client-ip=2a00:1450:400c:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22d.google.com with SMTP id n186so25243796wmn.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 01:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=9bGiDxPhQE8rJbm9tZUHHiZmIjb2o9TM8ky/z7F4hyQ=;
        b=0UH21sZB9IxuutSGvwFHQvyuMaVX+hAs2lbt1llL4tELljb/DsoVb+m4quJFV5DtLI
         LwOm0MlSJnH6RUA/9t3idlddBKVFcpDyJ1+8f03JjoeP1boFKWFgCe/+vVsDyRX/38v5
         WtuP1I6axBxCfjWzwEZFxTkv6f1bHUZPFQXcw5aoRICtsbzftn/bTwmw4HSFbNLUwfkg
         MZqEbyADG4m6HIiHhonYxw5d0oN8tMDFFckazrViJDDdviLNsfPl/bg1mW8zGOAehXRF
         q0BuEr2CJTZ5GWLsVBgYXpXi1JQCCJhu76P8qUJFte2YrtFueeTJ+U2kGdBcZy3m19H4
         DCbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=9bGiDxPhQE8rJbm9tZUHHiZmIjb2o9TM8ky/z7F4hyQ=;
        b=IHT/jETBZj94vKY930U0WmiOLZ3rj3xmoG7S4aeEoFNIZgCFMc2CI+1IbAxjh6Xck7
         LmJH0UbYxxasenUJz4AxhAJ2jv10qhE7pZ0iI8BUw4pjIToKrcg72r5BlAhNg6IgYgN2
         Z7ongsoL6EPmzqHcWfFHauxsEG588wtXXhuLmnXTTdjE/aRTnghi2nvhI5VR5BApPLqZ
         qUs3Gswq9Wf+2g6VtwJbgrlzbXvj1VAX2qxjEc028Lrchhxde2zpBNmrDUWtcSJXzJ9K
         IyBJdGuJalnceDoynlmgqQwTLZHfprjsn7CQ+eVLFLcmgV2p7bNNW8dimVJX9cbhNEpY
         mQJQ==
X-Gm-Message-State: AD7BkJJ4B9RAwsmQhGlnQ0L/Nbcp4JHn0DNVkt9As1WYN9txqbpXOipmCZyHRVSZPuiqpSenE3Q4WZVlbSWNYQ==
X-Received: by 10.28.49.69 with SMTP id x66mr2530040wmx.11.1456825924257; Tue,
 01 Mar 2016 01:52:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.7.68 with HTTP; Tue, 1 Mar 2016 01:51:24 -0800 (PST)
In-Reply-To: <20160229212216.GA29706@sonyv>
References: <20160229212216.GA29706@sonyv>
From: Shivani Bhardwaj <shivanib134@gmail.com>
Date: Tue, 1 Mar 2016 15:21:24 +0530
Message-ID: <CAKHNQQH2sE3A_jV0kuwBaTQZS1Z90RwuRoL+dvhPyCOV=Ev=9w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] extensions: libxt_statistic: Add
 translation to nft
To: Laura Garcia Liebana <nevola@gmail.com>
Cc: Netfilter Development Mailing list <netfilter-devel@vger.kernel.org>, 
	Pablo Neira Ayuso <pablo@netfilter.org>, Florian Westphal <fw@strlen.de>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 2:52 AM, Laura Garcia Liebana <nevola@gmail.com> wrote:

Hi Laura,

> Add translation for random to nftables.
>
Here, you are providing translation for module statistic, random is
just a mode for matching the rule. Please make sure to use correct
module name in the commit message next time.

> Examples:
>
> $ iptables-translate -A INPUT -m statistic --mode random --probability
> 0.1 -j ACCEPT
> nft add rule ip filter INPUT meta random 0.10000000009 counter accept
>
> $ iptables-translate -A INPUT -m statistic --mode random ! --probability
> 0.1 -j ACCEPT
> nft add rule ip filter INPUT meta random != 0.10000000009 counter accept
>

The match statistic is not yet supported in nftables, so these
translations are not going to work. You can track the supported
extensions here:
http://wiki.nftables.org/wiki-nftables/index.php/Supported_features_compared_to_xtables,
you can edit any discrepancies you find on this page.

> Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> ---
>  extensions/libxt_statistic.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/extensions/libxt_statistic.c b/extensions/libxt_statistic.c
> index b6ae5f5..95d588c 100644
> --- a/extensions/libxt_statistic.c
> +++ b/extensions/libxt_statistic.c
> @@ -133,6 +133,20 @@ static void statistic_save(const void *ip, const struct xt_entry_match *match)
>         print_match(info, "--");
>  }
>
> +static int statistic_xlate(const struct xt_entry_match *match,
> +                          struct xt_xlate *xl, int numeric)
> +{
> +       const struct xt_statistic_info *info = (void *)match->data;
> +
> +       if (info->mode == XT_STATISTIC_MODE_RANDOM) {
> +               xt_xlate_add(xl, "meta random%s %.11f ",
> +                            (info->flags & XT_STATISTIC_INVERT) ? " !=" : "",
> +                            1.0 * info->u.random.probability / 0x80000000);
> +       }
> +
> +       return 1;
> +}
> +
>  static struct xtables_match statistic_match = {
>         .family         = NFPROTO_UNSPEC,
>         .name           = "statistic",
> @@ -145,6 +159,7 @@ static struct xtables_match statistic_match = {
>         .print          = statistic_print,
>         .save           = statistic_save,
>         .x6_options     = statistic_opts,
> +       .xlate          = statistic_xlate,
>  };
>
The way you've written the code to carry out the translation is correct.
Please make sure to check your patches with checkpatch to avoid coding
style errors.

Thanks,
Shivani

>  void _init(void)
> --
> 2.7.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160229212216.GA29706%40sonyv.
> For more options, visit https://groups.google.com/d/optout.

