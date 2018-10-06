X-GM-THRID: 6609200682225369088
X-Received: by 2002:a62:8954:: with SMTP id v81-v6mr1190796pfd.36.1538850547617;
        Sat, 06 Oct 2018 11:29:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:13d7:: with SMTP id 84-v6ls5007925pft.0.gmail; Sat, 06
 Oct 2018 11:29:06 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63E+lHg27EZOPKyMFYwVH6igk3ZhhdHGjmxJUtZrEchi2DGxrESBOD03s3/IZcVggtzNFrg
X-Received: by 2002:a62:9b11:: with SMTP id r17-v6mr6085253pfd.15.1538850546848;
        Sat, 06 Oct 2018 11:29:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538850546; cv=none;
        d=google.com; s=arc-20160816;
        b=GFNanql89Dv+kyFPAOuTl+Dy/778ZVrm1HxExSaa8Ncqn7f4j9jOtygX8SR8mtgKmN
         k/UcMolSmKORUuYOXBKjgGsLacuaRcVSpH7Ij40/vkwFCL8dvL7MFN12/KkjKg2XO1y2
         jGdl32UallrXe2fPNPoKL0SWjglduNairFtzQRHo4WiV8TKUyPVTHM/x+DeOC+DCUuIp
         crDUplIIrbSXNT6HqKBPBQmCwdqojDkKPU376kKptw9YxQMkoEqGl9yA6ZSXrY9CVnTi
         nhzrz81wyfD6zwApFdXqyzCcoXp8yxSRxh2MKR+p0zaXcvlm/GXKXytYBWnVg6OIkVyE
         4iqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=SjVI18n0XVFcydaz2RwEPComuDwaj5rj8ZF3Luh4N8w=;
        b=ZSGyUtIATBnPm6hMroyyMRBfQcL6+WTqktYKad6yWdpWqByJ7eCONf2Nriy5+TnHRz
         l6hks8iyfL28iAbLH2DTkzOEBVdeGdg9QxS5yg4BBHDbCGQYUfNTLclX+Y4b+qBu/Ifj
         2dkqoCROkchm6wWzT55nJbGJ3B7sDNlu2cws9LttEw/MyXfBaU1xcRbFsJy7nEiz66et
         DSwhXjUUTnoa4Bj/pawZInD7NHsvuHkaiEQxLzg94w1EEUDtNtqwdMy3Ogl+mzdTukN3
         RqS2YyK+t7osTdiQIRwdB9TGRbpTqwzmFqrBrDWNsSDpa6/iyVowYDzr/z3mzrQvyg9V
         Knng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ASywznmM;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id k8-v6si360020plt.5.2018.10.06.11.29.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:29:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ASywznmM;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id f18-v6so6109772pgv.3
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 11:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=SjVI18n0XVFcydaz2RwEPComuDwaj5rj8ZF3Luh4N8w=;
        b=ASywznmM/jNVKHkljlVHk0z9eSSEL6ySwft60j22kjNlDdVQ1aXHrb4BVKxgEGfKXa
         j4VrABwLkAAK8EzFL2Qe1MDoROWSisgSPWFOiFU7rpjHpvNkMnoths6qN2hpqRcAHCzT
         LW+mPCzGJnaeMPP1pkqbHnUZ/0NqVvbKujI1gS/hQ/ukv/cjX9sOxnexmegxqia3E+C6
         iPPAea39f1/eZO2iLs410S6Y3NoalalrQkgp9538QsCfWKvdLnLfJww1Eqb8afHLj/U3
         c3mGgV8KfMIdLrX70H8f/9o5JPqXrflymaWPWIpqhm+vHHjZmRBc/vu+J7ah/H4pcJOy
         Czmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=SjVI18n0XVFcydaz2RwEPComuDwaj5rj8ZF3Luh4N8w=;
        b=FD5ubLe6ShC5/f8rYafbSOpomgOqTSFhtgrc2EGfz24AvNumx10dydM3CM1633pun9
         RP4QUOWWVDjCYtU8ejny6U+LHTFJuPLo8NrHVb60gdsd86GbKEhRAD0mRBZw7aCaAHqB
         hidc9nd3UZAuWHKFoHyjeSHwOgMqFfQoTRM5BPS/zGnP9r3bGjH2FmDhgiJcNz2CLCv2
         gzUqRvwNs9SNxKXfW7V3nECt1+ZPjop0dINeY/kbY0/itiCBn8I1rfB2KMwpR4igIvD2
         MnRzO3+FFf1TPvvoFJe3wtI0XdwXdq0BgqrYkmvZF7t5dzbkkXy4iER9YEOjSEu+e+4q
         6Uyw==
X-Gm-Message-State: ABuFfoh3eu/12FXVBd+IImlq+s8QKdTeQaZVpX9KoPepJyDElKKK/rTW
	e/AAMBZJSZiCVCslFOTnr2E=
X-Received: by 2002:a63:2903:: with SMTP id p3-v6mr9735055pgp.188.1538850546503;
        Sat, 06 Oct 2018 11:29:06 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from [192.168.1.5] ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id 68-v6sm28418185pfg.136.2018.10.06.11.29.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:29:06 -0700 (PDT)
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
To: Himanshu Jha <himanshujha199640@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
 <20181006175555.GE6283@himanshu-Vostro-3559>
 <68d61f32-294d-6056-7b3d-a89735bc539f@gmail.com>
 <20181006180243.GG6283@himanshu-Vostro-3559>
 <087647bf-36a7-870e-ff41-1b775e47cb47@gmail.com>
 <20181006182737.GB7070@himanshu-Vostro-3559>
From: Bhanusree <bhanusreemahesh@gmail.com>
Message-ID: <c1c8d1b5-9e9c-9797-bbcc-4af9e9c2a826@gmail.com>
Date: Sat, 6 Oct 2018 23:59:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181006182737.GB7070@himanshu-Vostro-3559>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Please let me know what to do on this ?


On Saturday 06 October 2018 11:57 PM, Himanshu Jha wrote:
> On Sat, Oct 06, 2018 at 11:42:16PM +0530, Bhanusree wrote:
>>> Then please state that reasoning in subject too ...
>>> Subject: [PATCH v4] ....
>>
>>> ---
>>> changelog:
>>> v4: corrected whitespace error.
>>> v3: ...
>>> v2: ...
>> I made changes mentioned and sent already with Subject:[PATCH v4]. Am I
>> supposed to send it again?
> Ah, I see.
>
> Subject: [Outreachy kernel] Re: [Outreachy Kernel][PATCH v4] staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
>
> You send the patch as a "Re:" as you forgot to use `get_maintainer`
> in the first place.
>
> Took me some time to figure that out.
>
> And I think this is not the correct way.
>


