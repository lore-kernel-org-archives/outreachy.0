X-GM-THRID: 6601859675922104320
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a2e:9b01:: with SMTP id u1-v6mr561671lji.11.1537116225805;
        Sun, 16 Sep 2018 09:43:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:d484:: with SMTP id l126-v6ls1190638lfg.24.gmail; Sun,
 16 Sep 2018 09:43:44 -0700 (PDT)
X-Google-Smtp-Source: ANB0Vdalvvd88Hi3n5tDhrqt/ihOFNujJ3VCUqt+Lfr+nyeB9xtOz+gSfZ8I8gqQJx3hYBau7ebz
X-Received: by 2002:a19:1649:: with SMTP id m70-v6mr599703lfi.14.1537116224960;
        Sun, 16 Sep 2018 09:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1537116224; cv=none;
        d=google.com; s=arc-20160816;
        b=PCPcAiF/J3xLoAg13y9jTPMoJTsigARKkmLs0impxYetK54/sBDJgUOW8uUtGQe7uH
         jlS+94Q00Szr5WWrW7xIzhO9YlU+apHODWEwa7uSyJk7xAUW37glwPm50rek0Tgl88Se
         NOKS68DImG/iXIxNuL3huAP/ywm8DjlfO4pCre9uOYVxvGLlVH6yxrhGu1M8i7/G4pJU
         b0+iaIB01UgLtfkJszGwb3hmdUvqqXW9lADmClG/h6oOdRolmFAqK2FBjDMaWMUS68RU
         TSR4R1GDNiNR1lIKTZUqJOrCYZ6oP2/Wmk+8FT1uVTZJw3otVx1f9AaEu5z8OpkiN1Yo
         Qr8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e10Tyb4u7yaTpRkF/8dbkJWGogxRGR9XMxIFfXhKYng=;
        b=eaS4oPx3SJUFJRa5OSR9OQ2urZ3yRaasUDyBt4YwCCdXYKfJLFZVcI/FO1Rb09O4k/
         uN6UYNiqrWKmAu+qE96iNxToCv2KUywt27drbUezOCc9gKTJTK2z9vbQkKYB1e0cCecg
         29S+941sXaFPI2dq3yZfZc1wN3+N1oPtmdC7wMUPXD6OtMk5zwioAljbq0HmjH5+lsdr
         /LEo27vEVfqS85zIIjvgHRkEx59c2kvTpS7DT9A3wwAnfPIZB8HloBdBXqSNEOJx7a0k
         mNUeSC/UMkmRRSx7uQxhkRU7dQj/B8ua5DVzCRaunN0cix3yS8/hF5+nw99HUsbx0kVw
         J4jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJSsF1B8;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id c18-v6si476215lff.1.2018.09.16.09.43.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Sep 2018 09:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJSsF1B8;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x230.google.com with SMTP id p10-v6so11189141ljg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Sep 2018 09:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e10Tyb4u7yaTpRkF/8dbkJWGogxRGR9XMxIFfXhKYng=;
        b=iJSsF1B86cmVAG9z3thJ4s+IqKQ8JJ9umgZpH8vs6uLZXhSvySUIQClgBRn1dwZtfy
         PdhdcLW8okDbV77C18Up0AzzQarWVWC9KCWtXccjZ+938WwnQQVs2SPsSH9/muL59teW
         i/CIjZx0vmhXcWlRbZEFOtcgddwFLTg1KuTmvcY/Wf9q8R+LMvNjBCLD6kh4UEJcE3V8
         d43Sck0uqD6aTgOTb3L5GLnkkbGI9VP7KHOq4uhVpZhocBTxXTdXqlWves2sZmC71jP2
         z3DVSrBZQ4zZLSN8yzCI+Eb8zDJyTW/CDmpsyQqgRxbihYqN6WibEwtA2arZfELKdNZl
         nslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e10Tyb4u7yaTpRkF/8dbkJWGogxRGR9XMxIFfXhKYng=;
        b=HBTjWzLSfqSI+3izAyhrJYo86A0vyafYMEWM1nrIYwTgdlkvuPgIKFQwVpGOxDo8hw
         7pvdOXrD8MrSTjGlaiB0c7ig6AbUZXR7CqNmQVi/ka58Qa7W49MkGD/bKqwLkCU5lrzG
         JFpbR4hD0uZOtOaOw8q5vibAm63/mUKS5AUjlrfM5ybdhbHiASxC9CTRhiO8QuQRCJPG
         xVQByEof6fj85WvjCsmyJSyamsk6IkDJe5oh3GZCU3SvcIIgSeJriWAxC8rHv491yavU
         hLO3C+eUDdmyo3HRE6VmvIQo8upAo4+K0B0wpBYQE1tSmyoUGFveIHcw0ULJ+I5jTNQf
         RgYQ==
X-Gm-Message-State: APzg51B1saEzKUb3+FbVSEzECBcWXICDgwtNdTb10ivV922RPT+ybTOO
	qH6OsTBrqQ/SyTHYXgsmiL9NHwWS/w1XYiOtQyu4fg==
X-Received: by 2002:a2e:8147:: with SMTP id t7-v6mr13948085ljg.32.1537116224480;
 Sun, 16 Sep 2018 09:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <8ef9244a-833c-4b24-97a0-fd6abbe338d0@googlegroups.com>
In-Reply-To: <8ef9244a-833c-4b24-97a0-fd6abbe338d0@googlegroups.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Sun, 16 Sep 2018 22:13:32 +0530
Message-ID: <CAK-LDb+Ca9eQLGbzoNvvtpTf7L-XZ5N=FURp1869hZJp5+ZFCA@mail.gmail.com>
Subject: Re: [Outreachy kernel] I am unable see the message in dmesg(Currently
 working on FirstKernelPatch)
To: gireesh21dcme@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sun, Sep 16, 2018 at 9:57 PM Kudipudi Gireesh
<gireesh21dcme@gmail.com> wrote:
>
> Hi,

Hi,

This mailing list is only used during application period of Outreachy rounds.
Next round of Outreachy starts from September 19, 2018. If you're eligible
for applying to the program, you're very welcome to submit your queries and
patches once the application period starts.

Meanwhile, you can use kernelnewbies mailing list and #kernelnewbies IRC
channel on OFTC server for your queries.

Thanks!

> I followed all the steps in https://kernelnewbies.org/FirstKernelPatch.
> I also checked the device whether device is avaible by checking lsmod
> I am using ubuntu 18.04.
> I am not able to see the printk message in dmesg | less after rebooting the laptop.
>
> printk(KERN_DEBUG "I can modify the Linux kernel!\n");
>
> I am trying this for two days.
>
> can anyone help me with the issue.
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8ef9244a-833c-4b24-97a0-fd6abbe338d0%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

