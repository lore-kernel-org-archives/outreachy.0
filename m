X-GM-THRID: 6200732724667351040
X-Received: by 10.112.132.6 with SMTP id oq6mr1777588lbb.1.1443730622022;
        Thu, 01 Oct 2015 13:17:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.225 with SMTP id l1ls248809wij.2.gmail; Thu, 01 Oct
 2015 13:17:01 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr146020wib.7.1443730621705;
        Thu, 01 Oct 2015 13:17:01 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id k7si144090wif.1.2015.10.01.13.17.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 13:17:01 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue005) with ESMTPSA (Nemesis) id 0MKMb4-1ZhC3O3yXm-001kVN; Thu, 01 Oct
 2015 22:17:01 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Shraddha Barke <shraddha.6596@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] Declare functions and structures as static
Date: Thu, 01 Oct 2015 22:17 +0200
Message-ID: <1618733.OsocIDNLYM@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
References: <1443720581-11352-1-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:nZo6sRiwZ+cB40PPCvdqn/bU015p5aPWj0XsmQN6qvhMgdG2LyU
 S/G/fUk/ysW+w21NvfvjonJcjJWADGyRA1b/7ftAaF73178uc/c/OOJTUwYjb5UqYbaNmqX
 8x8jk7Uhug9+pCoPqswBAXMR0qr061+4fqq9VX1TsgX+xzXY6pP+u410LNM7jdMbZKsdg6F
 QQuJq9EffyLh13AuQUt+w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:p1ltzj3XzaE=:xpaFPZBriPrweET8jdwSrp
 Tr6zAPxhcA5z0lPGHFFHCGWg4OnZ51i8OrlctQyCqLB4uKAecsDrav0EOG7j9VNDMcPHVRNhn
 Pva/WZcFRZzj7Q9HrII6EM6qMua54e7G2Y9CpKrh2hFfTpzFFZUxh4giVFT9vvwH0pL93ywOH
 HAfdXphSdtKJveBCsjX8va7SBcM5KkXM3T/tER+p2X8yXDkpTm1bigGOqwqaOWgfN6DmgW9It
 crSW4y5yuhzM9doO8Q1vs8W3g/bQtt9FZq5xNNxwjEmx9WXt9CQG74RbvvsYJgUZrQ98fmfUe
 XpAwQqomHLSqF/WPx58OtZpAxsxvXGbvo4Zti/BNrU1ekILxqcor7Tx8JQum7GtH/13/WE2Xz
 UjYJpJqkoDLvyJi7uZ8tF3AuTTJTOeAQj/G8QMrtNynpgCUCFBQmcWmx/4M84DA35Ieok/B/2
 Hg7if+TbcTkLAKfZL1Z2jlm1gvINqqrOU0YQ5h+a1uwPzjV+EwERSpXAo2RbPq0jQ4nPkhTY1
 JlLlpgOkV+Entj7bckbpbFIP7wgHRNM8MPxZRaAKk1p1XRokTPDtvMoGJWZV/7p6jTzQYzDb2
 Nf/qyHn/M38cqVqQ6pkeVS0GZhm6WiGvLQkHEoXfBBVEnup9vyXi0P6Je56rpbP48yZWy+2QH
 JkkSZZfq8BIFgCv5scc0iO6fYrEkH/WJK20PyQ0dCIInPFk9o53se9quvpB94bc+/2wxOaT3U
 BGMwwmrxRIBKdtVP

On Thursday 01 October 2015 22:59:35 Shraddha Barke wrote:
> These patches declare the functions and structures which are not
> used anywhere else as static.
> 
> 
> Shraddha Barke (6):
>   Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_merge as static
>   Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_free as static
>   Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_expand as static
>   Staging: lustre: ptlrpc: Declare sptlrpc_rule_set_choose as static
>   Staging: lustre: ptlrpc: Declare sptlrpc_req_replace_dead_ctx as
>     static
>   Staging: lustre: ptlrpc: Declare sptlrpc_parse_rule as static
> 
> 

Individually, each of these looks good and can be applied

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

Now that you get the principle right, I think it would be better
to continue with similar patches that do multiple functions at
once and look at the bigger picture. In case of this series, it would
be worth noting that there are two more sptlrpc_rule_set_* functions,
and neither of them should be global. The sptlrpc_rule_set_init()
one is slightly different because it's static inline but can simply
be moved into the file that holds the other functions.

Try to find patterns like this and then handle all symbols that
fall into a similar category as a combined patch.

	Arnd

