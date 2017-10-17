X-GM-THRID: 6477808984307793920
X-Received: by 10.37.248.4 with SMTP id u4mr7556672ybd.41.1508244081707;
        Tue, 17 Oct 2017 05:41:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.219.213 with SMTP id d204ls66087ywe.43.gmail; Tue, 17 Oct
 2017 05:41:20 -0700 (PDT)
X-Received: by 10.129.199.9 with SMTP id m9mr7554362ywi.160.1508244080874;
        Tue, 17 Oct 2017 05:41:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508244080; cv=none;
        d=google.com; s=arc-20160816;
        b=rAaSbYeyalWpOE52pVEmvtsrzdZffzEOklqoqlOasGwWyNZiPDRxVBf4ycDGXVJZFx
         v77pWR5EJZHfMJNTmsBpOUzon+x+qHAREOIFagBN5sLtj0nyptHeqqRJPBiV80LFQBhs
         q16roSJvNiSY7K0Nb89xb7LUi4OkcElez3a12uXUxjt8h1MsJMWurWlOGzgCB/SdpGo1
         HJgQxiV8DejlcgMz7GIWuSeTJtMze58QQlko2Rv1Z7gGmnv2sBChs1dcnZhh2igeIDzL
         +uUp06Ljfn6c46S6/MlnSSw+FdcHZgaQhBkRg4tpitw0YyNRW4ZAz0nhjNWbTVrmuxTM
         AZZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=/WkV8aXXo6DmNe0IP9vFaP3w0AGv+Oyei8gTMHMaHG0=;
        b=qYgUDaRAwmGeD5uzeQBnoQTp357OSX0zLXmLOY+o8o8pjdpgGhqufJSX300ckg0PrI
         G8waK2na7iacwwljC1ZaTL80ldeRPknEXGFYm42H6mW1Ri0w0R5O/ShUTFDd519Oh29s
         ai7Rbfe/KfsSieDOe1jOnYqIjr906VBHwPlMBC2c/Ot0JsYvy512QsaL+/43AHOe6X3f
         OVP1QuL9gYUSrv64zcXpNl5tVW1NNeN87ti3x9As6m2nSTQGjCoFoBuT9+Le2cnczNNi
         cHKhf4jDCzfcZoGtMmX1xg6SrgGuxli0Sjl0K1XThrLpG4haw/+1pGTXUAy8NqC4WDXU
         SM6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vGbQPkRd;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::22e as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-vk0-x22e.google.com (mail-vk0-x22e.google.com. [2607:f8b0:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id a13si385565ywe.0.2017.10.17.05.41.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 05:41:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::22e as permitted sender) client-ip=2607:f8b0:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vGbQPkRd;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400c:c05::22e as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x22e.google.com with SMTP id r82so972261vke.6
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 05:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=/WkV8aXXo6DmNe0IP9vFaP3w0AGv+Oyei8gTMHMaHG0=;
        b=vGbQPkRdgh7ryYLdP6okWhR/eOSLIJ2VnWUiFp6OfNsjmnZgiOy7Lu6HLrbQWvEO50
         pWsf1ipecIDws0aukoLDpyB9oGJb/1cqZmEN7FZSxME3LNs3fcZHH8jVtcxJSfmQuw8+
         naHm7aNOV4nCVmrM7KEG/MF0GkX5I3eTnGEJSa0Zq7TwYiTbV/NBFaKmnCC9o/WIw88u
         91AyzT8Q6HV0FgKIrSGFSpTlmXzyYjQx7h+hvmQrm8fu+3FgGAtHngIP09YTca2EqOyl
         Oej//mmkhnw0tLCllMgZIA5TYStDBP7w79oGK+Rm2sWZ+fLEudQqplY3Czmwrtq8bPZp
         87VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/WkV8aXXo6DmNe0IP9vFaP3w0AGv+Oyei8gTMHMaHG0=;
        b=m5mtrI8anqaRpstN9m8T9tPMDkDQZUb7JMftBTVpzmbgAQOcqsjxm1YtJrpFNe5Bk6
         fCxqhvFp7lDFs6+IiuEbhUCSZMxzIq0TESRbuWg7ut6RgfB0A75j8vbjkmI7lV2saSS+
         bG3/T2bXhKX9/QtlVODakCtRbCuphCBM9mZhPxeTjEnLBRU0Df5HCNK3M8dKWKHt+SpC
         bJCO8IB8tYlWq7e1qSofjimDv20yeOHa+EBNpVp1l2A1dGmuH6cBSgCw492YXFL978Q3
         F8pAnz0AADCzbcU68BHLSLbHIs5UragJhaAHbHwSEATdfaVUX7E/2yaboeyjMqt5Jane
         HaZA==
X-Gm-Message-State: AMCzsaVs3oLPer4EItxFEMjK6fXs5QOt84znryVYJxciY9DgiwC6K8by
	w8GRkj1V+Bzaeio86ykLNLFDc8QyF4WF/BPS6qc=
X-Google-Smtp-Source: ABhQp+TFIsbVIwRSo6KVk6/eHIIGhlXaSvoN4Ublfb+pv51jCt7RbHp/Kg7ww21icYnRTQeUc/3NJfawa6P06BRdTZw=
X-Received: by 10.31.137.149 with SMTP id l143mr2818682vkd.58.1508244080600;
 Tue, 17 Oct 2017 05:41:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.68.70 with HTTP; Tue, 17 Oct 2017 05:41:20 -0700 (PDT)
In-Reply-To: <20171017112757.GA8578@salvia>
References: <20171017092458.18672-1-harshasharmaiitr@gmail.com> <20171017112757.GA8578@salvia>
From: Harsha Sharma <harshasharmaiitr@gmail.com>
Date: Tue, 17 Oct 2017 18:11:20 +0530
Message-ID: <CANMOCy0HPn+0v62=-rBqZzLFq9V28VswQDeW2x-MDofXDCt+Eg@mail.gmail.com>
Subject: Re: [PATCH v2] tests: xlate: print tests passed and error for
 testfile argument
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 17, 2017 at 4:57 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> On Tue, Oct 17, 2017 at 02:54:58PM +0530, Harsha Sharma wrote:
>> Print tests passed with errors and warnings when run with only specified
>> test file.
>
> I would expect this works like this, for consistency with other test
> infrastructure we have:
>
> # python xlate-test.py extensions/libxt_ecn.txlate
> Error: test file does not exist
>
> I can see here this works like this:
>
> # python xlate-test.py libxt_ecn.txlate
>
> But as said, it is counterintuitive. Would you revisit this patch?
What I have tried to do int this patch is
for e.g.

# sudo python xlate-test.py libxt_ecn.txlate
will not result into any output as all tests are passed
but with this patch
# sudo python xlate-test.py libxt_ecn.txlate  (gives output)
## libxt_ecn
Ok
src: iptables-translate -A INPUT -m ecn --ecn-ip-ect 0
res: nft add rule ip filter INPUT ip ecn not-ect counter

Ok
src: iptables-translate -A INPUT -m ecn --ecn-ip-ect 1
res: nft add rule ip filter INPUT ip ecn ect1 counter

which is expected output as one should get to know if the tests are passed
or not .

Thanks. Please let me know if this is expected output or not.
>
> Thanks.

