X-GM-THRID: 6948342597010063360
X-Received: by 2002:a05:651c:c1:: with SMTP id 1mr7197154ljr.467.1618305148512;
        Tue, 13 Apr 2021 02:12:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls2375824lfa.0.gmail; Tue, 13
 Apr 2021 02:12:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxUmrMrRl8DvUsF+HmJmcuUc5YL9UGw19JC4YweVJI5ANAH3nBXBsMVHNogI8Gzwx30u0/4
X-Received: by 2002:ac2:4834:: with SMTP id 20mr18064714lft.389.1618305146771;
        Tue, 13 Apr 2021 02:12:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618305146; cv=none;
        d=google.com; s=arc-20160816;
        b=vS5PHVsTOITN9UiL6WBEVU2jbDSp0p4zs8b3XHjX/vwTQ8yDtoPkFux07Z+olLx6Fv
         fRAJLohPddy3oIi6C+4XPPxpvdEkzlVIjP91Y3UQw/sPfdaEQTamhx3kbnNCm5lB10Wn
         Fcrjm0PLoXkfD0bkHogSpuvT1MVB/XDHuqu5JCHWaIVm5qPnLHNr4axcM1mmVv7dbX1q
         tMRQ+OjJotbnhH6PzQ17p4r1nwYDUspPpiTA9vE3cq0ITQfAejTuqpoMBfHwZLV2cvKp
         katkp8xS6r4V42WGFz79gNJj3a6STBBF4dDpTvY/phfM5RzHrNRc36OgcRaC8rqFvAtA
         cC3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cOAyiIpTL0MPS3HVlPhA17Z4KssVa29gOz8MIS/lLK4=;
        b=ZoJ1TRzHysEGkz023Jz1GvAyZ0illE5aX8C8ZpEuZg0f1MIBb9bW7Q4mSJ+fmGzXzk
         84YhvlfJ+j9cgmK4upDa8kNRPJEU4yue7KbyLFbRJ/0QrJrDOZqaNljeKiVgInobBtkW
         NL0U9XjKg8vTkMb7Jym5McFmSfy9PTNTBwy4VmskKSabOP8L5/Sk49T0FpjPHltbrH1R
         2RhcHLaZe/fRM5xaxRVfxtEaPr9tQMwSx4pxrQykl1/NFqLLQOLlpTElMMNlox1FWpU0
         A7tv5fQ9CfMHapUCULGgsiTmksfX7UG8XgPlsLqOzx9W3MUknTqHkyvSsBrcdeY9gFMv
         zSyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ReVQZ/tK";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com. [2a00:1450:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id q26si603920ljj.4.2021.04.13.02.12.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 02:12:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) client-ip=2a00:1450:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ReVQZ/tK";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62d as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62d.google.com with SMTP id sd23so16096993ejb.12
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 02:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cOAyiIpTL0MPS3HVlPhA17Z4KssVa29gOz8MIS/lLK4=;
        b=ReVQZ/tKm2GnT7ScEH9ClWtZBQDCG5i9KRPiqdu7rubKxmPXOyvG9goxkqig689jRp
         +6nnEPWj1qeORcIKvKahCIlDU52THgQVQNABsQnaKYAxNrJ8FDgZ6cQVlrfOUQ9O4n6W
         ZZX4OC0ZdpLgxs0x/Ru1TiWMafgZvU5+FeEBUxOOrK5XvHQCYcv+8k8ZlhtIFvhy4hPU
         TLWnNH1Nh7MTpj7UelhnYFV+/+2m+cuvgM/awVGc2xkPZYytcgHSD00w8P0MCfgdqg3D
         dJ+dPiqiZTPV0qbzU1V0VHTuM9DOkQSHN19amopX79h2JyMDpfWY8mtTqu4HODNK0Y0C
         w21w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cOAyiIpTL0MPS3HVlPhA17Z4KssVa29gOz8MIS/lLK4=;
        b=dr5DmBlzrVJjHfCFrCtAPASLzdauW62w/b0bCQirOQJcvkD6khMJMygV7qmYY1aMR7
         Ufnh9FXHmcg6qYumtKru3M9w3Iq8z/IEgtfTD3vkGA1Pc9KR1KsG+iyLrXHELzbF1N71
         WjsyyNWPlMRJktHIvBMBwtlorSac2Fw5QjhtKn1DjRO8IVlZhXxJmZgbHL7vUf/nJRSc
         H/3VS3ykyITGYDvg1xkjxp9CArCXT9Z3iMok/0Ln/pheJlLjIho6kOy8azZQAVxtd4G3
         wdn10jKJeQCKZTW05xdl2OwvgBnSf+QFGnz5ZONsOOD2pe7ZvSELcafJD04vOi4f4QEZ
         ADOA==
X-Gm-Message-State: AOAM532KMYvBPUw3z1ZEuhicAUth8/zEDnCtMgGI/vjaIvtrhAGItfRB
	68m0s8qO+MLEE0Mz1RmcBeM=
X-Received: by 2002:a17:907:33cb:: with SMTP id zk11mr14642441ejb.231.1618305144069;
        Tue, 13 Apr 2021 02:12:24 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id t11sm7389296ejs.95.2021.04.13.02.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 02:12:23 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: hal: Remove camelcase
Date: Tue, 13 Apr 2021 11:12:22 +0200
Message-ID: <4613100.Flf31UX1ZZ@linux.local>
In-Reply-To: <YHVKwEX8CvV7brRg@kroah.com>
References: <20210412210258.8061-1-fmdefrancesco@gmail.com> <YHVKwEX8CvV7brRg@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, April 13, 2021 9:39:44 AM CEST Greg Kroah-Hartman wrote:
> On Mon, Apr 12, 2021 at 11:02:58PM +0200, Fabio M. De Francesco wrote:
> > Removed camelcase in (some) symbols. Further work is needed.
> 
> What symbols did you do this for?  What did you change them from and to?>
> 
> Be specific, and try to do only one structure at a time at the most,
> trying to review 1000 lines of changes at once is hard, would you want
> to do that?  :)
> 
For sure, if I were you, I wouldn't be reviewing one thousand lines of code 
at once :) 

OK, let's work on one item at a time  

I'd place each change in a patch of a series:

a) one global variable -> one patch with subject containing the name of the 
symbol (beware that if not 1000 lines you'll have to review 200 lines or 
more because that file is huge and its globals are used hundreds of times);
b) one or more local variables -> one single patch containing the name of 
the function where they are used;  

In the while, I'll remove also the trailing "p_" that stand for "pointer" 
(as Julia suggested). 

The above seems reasonable to me. Doesn't it?

Regarding what Matthew wrote about making use of  
drivers/net/wireless/realtek/rtlwifi/btcoexist/ I cannot work on it (too 
much time commitment would be needed, I suppose), but,  if someone else 
can, I won't do the above-mentioned tasks because they would be useless.

Said that, I'm not sure if removing camelcase in this file should be done 
at all.

Thanks,

Fabio
>
> thanks,
> 
> greg k-h





