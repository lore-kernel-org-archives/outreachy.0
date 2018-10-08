X-GM-THRID: 6609200682225369088
X-Received: by 2002:a67:7407:: with SMTP id p7-v6mr20578564vsc.26.1538995254242;
        Mon, 08 Oct 2018 03:40:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7449:: with SMTP id p70-v6ls18055vsc.1.gmail; Mon, 08
 Oct 2018 03:40:53 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61fl0FgFBhSBGf1fZKt7XOAecC0nYL7ODedJRiz3/mNKMSR9YPR0BR0NRtND8exjBoLigIq
X-Received: by 2002:a67:68c5:: with SMTP id d188-v6mr21054214vsc.11.1538995253318;
        Mon, 08 Oct 2018 03:40:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538995253; cv=none;
        d=google.com; s=arc-20160816;
        b=mFGp0eMUED/BTZR5S12sB5gDUd07jmq5FRKkFPhum3f8QXLSiMxUqBXxEExdTtSqVv
         7c0ThWS/1LJWE/UlUKHfGM0AqlJvudQK/L3LURaKmJROkdUdWg8rkiKVWO7csH0kcdWk
         yGiIX7YIzr8/PKzX7EWw+z2f1YsXYdsw7DxYKestCJ5ZKJ6hLZpRBBROUro35JyI996S
         Z2LYLd4JlINtvEVc9lBv8lvh6FGfVlq8q0HqeQ+sy9buhgcX8DnNWnkaXtKeLLq9W/bP
         FiCmjxnGYlPPDcjf+F/UN0TNifRgGX1RqhLwSD709znJru3YxX8kCR+PtgToxzdsUxJq
         61QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=0CvvnkQfE8KBJ3kQdFVLEQttcnJIVnW1H+TNZIVSxnY=;
        b=Mt3UjZFgQhZeLfvnFw3wvpG2pAKv2wVwcsf0aZd7QrTpjbPdIKRzvjWVJ5YYpDEkNo
         MTEtShy2r5HVDQ7/V5g0KZX3+QgB24e34RsZmpwlqngzo3GUaZDvzmc5O0NyY8LCvxNi
         W2UxboIlSgjtSySO5KdB/4mzoZ1/On3AahAJ1fgr/emBhGvyHGF7yaLYKfm6bbSbRW6O
         C5Kz5ygY9ytAquG/HbPItM9WJJvxNTNj/Qa1hsqoglU5plzS4jQ/enSFY8JSZRL8B0fQ
         93Hv1c9n31mzb/1T7o3tFTo0xos75DfwJ1jH0IDHDSQnezqJLAicIpRQUKoEy3xLNq9I
         Zy8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-06.prod.phx3.secureserver.net (p3plsmtpa08-06.prod.phx3.secureserver.net. [173.201.193.107])
        by gmr-mx.google.com with ESMTPS id b18-v6si364688uan.1.2018.10.08.03.40.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 03:40:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.107 as permitted sender) client-ip=173.201.193.107;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wm1-f42.google.com ([209.85.128.42])
	by :SMTPAUTH: with ESMTPSA
	id 9Sy3gcf7ZiOmS9Sy4ge7Hg; Mon, 08 Oct 2018 03:40:52 -0700
Received: by mail-wm1-f42.google.com with SMTP id y140-v6so8449646wmd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Oct 2018 03:40:52 -0700 (PDT)
X-Gm-Message-State: ABuFfohfEmN3GVLZimAyvnULvta4kc45VdYbpV80jnHPRGm2Dcm0K+q+
	1snRIDV2zTsOmPuClEp9Fj6sS+p94BNYmtxZ0rY=
X-Received: by 2002:a1c:c40a:: with SMTP id u10-v6mr11668879wmf.30.1538995251179;
 Mon, 08 Oct 2018 03:40:51 -0700 (PDT)
MIME-Version: 1.0
References: <1d352f7b-f146-73af-23bc-5301c9cd035a@gmail.com>
 <62c732c8-8f6d-6a2c-3256-ba3386444f76@mev.co.uk> <f8152fce-71dc-6771-a33e-bc9d95fcf46a@gmail.com>
In-Reply-To: <f8152fce-71dc-6771-a33e-bc9d95fcf46a@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 8 Oct 2018 16:10:39 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+bPph5Vd++WV18jMRAr75HO+qJcRk8a2L-jvmBGmDVFg@mail.gmail.com>
Message-ID: <CAK-LDb+bPph5Vd++WV18jMRAr75HO+qJcRk8a2L-jvmBGmDVFg@mail.gmail.com>
Subject: Re: [Outreachy kernel][PATCH v7] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
To: bhanusreemahesh@gmail.com
Cc: outreachy-kernel@googlegroups.com, Ian Abbott <abbotti@mev.co.uk>, 
	hsweeten@visionengravers.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfJHgu9e8MywnEPrngR7IZlkLbJ+wt+4BGuzxpJpDUL/32heGAm1Q3+CL/XzzmtB9POVp4qZBiNzHAD4fKaLXg23f7Ki7Qzjsp5Ob1IBwyZiUYAlMKzyH
 nQh3SK+shA6stLbvCIUiw+fyAAqlwMJwiuwT9Us1lvw9HQJGUNxAvsEff2al0woHFqBFNSjYrP+5rdz/o1pGwqxv1hYNRYDl3ZA=

Adding Greg, Ian and Hartley

On Mon, Oct 8, 2018 at 3:46 PM Bhanusree <bhanusreemahesh@gmail.com> wrote:
>

Bhanusree,

When you reply to email, keep everyone in the loop. Use reply-all
instead of replying in the mailing list only.

>
> On Monday 08 October 2018 03:39 PM, Ian Abbott wrote:
> > On 07/10/18 12:32, Bhanusree wrote:
> >> comedi_pci_auto_config() function prototype is exceeding more than
> >> 75 characters per line. Adjusted to 75 chars to improve readability
> >>
> >> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> >
> > I've never heard of that preference for function prototypes to not
> > exceed 75 columns.  Where does it come from?
> It is the warning given by checkpatch. Earlier it used to show if
> characters exceeded 80 per line. But now when checkpatch is applied it
> is showing the following warning.
>
> "Possible unwrapped commit description (prefer a maximum 75 chars per line)"
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f8152fce-71dc-6771-a33e-bc9d95fcf46a%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

