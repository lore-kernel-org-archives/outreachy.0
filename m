X-GM-THRID: 6260100746941825024
X-Received: by 10.182.236.4 with SMTP id uq4mr26296068obc.3.1457544724544;
        Wed, 09 Mar 2016 09:32:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.62.69 with SMTP id l66ls677014ioa.54.gmail; Wed, 09 Mar
 2016 09:32:04 -0800 (PST)
X-Received: by 10.50.61.100 with SMTP id o4mr18950043igr.10.1457544724136;
        Wed, 09 Mar 2016 09:32:04 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-ob0-x235.google.com (mail-ob0-x235.google.com. [2607:f8b0:4003:c01::235])
        by gmr-mx.google.com with ESMTPS id cz12si548866igc.3.2016.03.09.09.32.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 09:32:04 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4003:c01::235 as permitted sender) client-ip=2607:f8b0:4003:c01::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4003:c01::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x235.google.com with SMTP id m7so53864793obh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 09:32:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=SI5FXAZIFAhC/AP3QfIfgBbNDGkp1s3iD54pKxiKHQg=;
        b=NAekJ6BtrBYCYHTCRMDVX4VCalP+dYacVZVg+R/1K/ih4y8I9K8Y/K95k9c7MZSvdH
         t4kDn1o0a20OQiGYYlyTLMmEV4ocjlh3WzWWU+oJLB8UnbVKCHSM86mDR3gGjaycWD6Y
         cJdw92xHrb3kEls/IP+u1l+brwEr8xA9G3jFOkzS1vgZqQjTPTQGYhGcqsqJ26Cl38U3
         lgXrrtuZjvRakEfsIwKfXM/vNvNuG/O1hCSWQ4gxIDw0j/yCC25l10B3Rq++HHVhgfoI
         BM0DDiOzsSUcfH01kUmaMjo2imNnIZDkRK5oCNT4Mwj7QV65AFPtd9bAblQyDBBFQoK2
         feFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=SI5FXAZIFAhC/AP3QfIfgBbNDGkp1s3iD54pKxiKHQg=;
        b=TepG1SiTtvL6PEt1RoOvlxES4WpjsimFl0/LTLZGULVc3lI6vwtiCor3CxUkWMFqQ6
         DGrVQ+xVSy/pBkdBrGnrBSfjpJ+XYLWLU0EdXQBREwtUksKAGqDmgIaHd1SqdQnL12Rq
         VMAHTrMgJtTGlf8OnevStoR+T4HAs4mSWgnTiRoaYaYmfL4d+Nmn/IQVU3BdauJl+Wo+
         8wzJxPnkpvYAA/2XGyW2l9YXGlhVT8qcTFw1Q5AT3R9t3ILGeRoQDJwYz6gmEuANeQi/
         Bp4a1Cu6rFpvr2ly6Ur2U8qW5Yc+rCmMklrN169xEH8vfj13FPHskEWmg/l39UMAjz48
         X4Zw==
X-Gm-Message-State: AD7BkJJX3XpZojQFEzTPR2GrBopdGN7P+dGblad7HZiDOBmMGfcbjUZ1xldF+MkV5BPWa1eNhlo+7EDqlp3bRw==
X-Received: by 10.60.135.98 with SMTP id pr2mr22698270oeb.65.1457544723937;
 Wed, 09 Mar 2016 09:32:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.60.159.200 with HTTP; Wed, 9 Mar 2016 09:31:24 -0800 (PST)
In-Reply-To: <1457539133-6410-1-git-send-email-bhumirks@gmail.com>
References: <1457539133-6410-1-git-send-email-bhumirks@gmail.com>
From: Shivani Bhardwaj <shivanib134@gmail.com>
Date: Wed, 9 Mar 2016 23:01:24 +0530
Message-ID: <CAKHNQQFThrx46tbAH9Qu+kOPNJcs69hBt+M1jFDkjShpewUTkg@mail.gmail.com>
Subject: Re: [PATCH] extensions: libxt_CONNMARK.c: Add translation to nft
To: Bhumika Goyal <bhumirks@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, netfilter@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 9, 2016 at 9:28 PM, Bhumika Goyal <bhumirks@gmail.com> wrote:
> Add translation for target CONNMARK to nftables.
>
Hi Bhumika,

> Examples:
>
> $ sudo iptables-translate -t mangle -A PREROUTING -p tcp  --dport 80 -j CONNMARK --save-mark
> nft add rule ip mangle PREROUTING tcp dport 80 counter mark save nfmask 0xffffffff ctmask 0xffffffff
>
> $ sudo iptables-translate -t mangle -A PREROUTING -p tcp --dport 80 -j CONNMARK --restore-mark --mask 12
> nft add rule ip mangle PREROUTING tcp dport 80 counter mark restore nfmask 0xc ctmask 0xc
>
> $ sudo iptables-translate -t mangle -A PREROUTING -p tcp --dport 22 -j CONNMARK --set-mark 2
> nft add rule ip mangle PREROUTING tcp dport 22 counter mark set 0x2/0xffffffff
>

In nftables, I'm seeing mangle supporting only chains with hook
output, let Pablo comment about this.

I'm giving you an example using output chain only.
For the rules that you've written above, say rule 1

nft add rule ip mangle OUTPUT tcp dport 80 counter mark save nfmask
0xffffffff ctmask 0xffffffff

You should carry out the testing as follows:

$ sudo nft add table mangle
$ sudo nft add chain mangle OUTPUT { type route hook output priority 0\;}
$ sudo <your rule goes here>

Now, if nftables does not throw any errors, may be your translation is
correct then, this however throws errors. Look out for correct
translation code.
Hint: http://wiki.nftables.org/wiki-nftables/index.php/Setting_packet_metainformation

Thanks.

> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  extensions/libxt_CONNMARK.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
>
> diff --git a/extensions/libxt_CONNMARK.c b/extensions/libxt_CONNMARK.c
> index 42cf207..e2dbf8d 100644
> --- a/extensions/libxt_CONNMARK.c
> +++ b/extensions/libxt_CONNMARK.c
> @@ -347,6 +347,32 @@ connmark_tg_save(const void *ip, const struct xt_entry_target *target)
>         }
>  }
>
> +static int
> +connmark_tg_xlate(const struct xt_entry_target *target,
> +                 struct xt_xlate *xl, int numeric)
> +{
> +       const struct xt_connmark_tginfo1 *info = (const void *)target->data;
> +
> +       switch (info->mode) {
> +       case XT_CONNMARK_SET:
> +               xt_xlate_add(xl, "mark set 0x%x/0x%x", info->ctmark, info->ctmask);
> +               break;
> +       case XT_CONNMARK_SAVE:
> +               xt_xlate_add(xl,"mark save nfmask 0x%x ctmask 0x%x",
> +                            info->nfmask, info->ctmask);
> +               break;
> +       case XT_CONNMARK_RESTORE:
> +               xt_xlate_add(xl,"mark restore nfmask 0x%x ctmask 0x%x",
> +                            info->nfmask, info->ctmask);
> +               break;
> +       default:
> +               /* Should not happen */
> +               break;
> +       }
> +
> +       return 1;
> +}
> +
>  static struct xtables_target connmark_tg_reg[] = {
>         {
>                 .family        = NFPROTO_UNSPEC,
> @@ -362,6 +388,7 @@ static struct xtables_target connmark_tg_reg[] = {
>                 .x6_parse      = CONNMARK_parse,
>                 .x6_fcheck     = connmark_tg_check,
>                 .x6_options    = CONNMARK_opts,
> +               .xlate         = connmark_tg_xlate,
>         },
>         {
>                 .version       = XTABLES_VERSION,
> @@ -377,6 +404,7 @@ static struct xtables_target connmark_tg_reg[] = {
>                 .x6_parse      = connmark_tg_parse,
>                 .x6_fcheck     = connmark_tg_check,
>                 .x6_options    = connmark_tg_opts,
> +               .xlate         = connmark_tg_xlate,
>         },
>  };
>
> --
> 1.9.1
>

