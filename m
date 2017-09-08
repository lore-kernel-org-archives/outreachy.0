X-GM-THRID: 6463164323927687168
X-Received: by 10.13.223.204 with SMTP id i195mr1043247ywe.231.1504845208839;
        Thu, 07 Sep 2017 21:33:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.52.213 with SMTP id b204ls2538745ioa.37.gmail; Thu, 07 Sep
 2017 21:33:27 -0700 (PDT)
X-Received: by 10.99.163.84 with SMTP id v20mr1078068pgn.146.1504845207801;
        Thu, 07 Sep 2017 21:33:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504845207; cv=none;
        d=google.com; s=arc-20160816;
        b=SSPDmUmvNu/pheQQwKSQR6N1V8Woo+ZVmtR1Vkp+uJoHmwxjaMp6vkJl6ZqwpRNstO
         fU1XibaFznPYwLirpfpX/KjgiMbjSPtnz6mgqLV4fiQDQb4p9g/6dLW8sCmlcRK5oOKA
         Yz1k1wBQOWhOXY63L9fb/10ylX8FHcb4Sep1lIKXKlO7jk2iNYimB8fkU0imslkfGAvC
         WjvttuG4EwBE6tnx86/Bn3NJs69AyeqiMJMoGcbDuSSocY6JVGclz3fa+jyQYEsbKjUf
         9ob08TbCloeU+wbZJeqxolqMkpDU/MD0VrADA+NhStG+ThxE0xVVZ9Ue2z0lU4CyBcIE
         FNmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=CGsWkzmPPcVvlPsPjis6C53fxfGNx+LnOqPemUMDgOs=;
        b=gnX5wsf60hgiPwu6ZFeRQI3BjdTp1dSd89sEZ36YQaWEN3UUQ8NbihfVYxbJUDSwfy
         I5W1YnnZvII1ib7YGWsyAq6S+8HfFN9CTbVfYTXbKV83Q2EmQiOUlRginZbTEXDYXLB9
         3u39+WkNsZHwdIS1jfGhG2UKE3lXz5ChlSquoHY25g6tmmIaHNCO7NdY9m2YCJb5zAzR
         72cJmXz6jDth57U9WvSdoU7i02xQMwrnG0jV7UF8YgUBuyVLa7/78pKcVCGE9ghEPGj2
         Uctpuzjm4LPU11Cz7WpjtHqKAM0Xw3Ze2b2YtBoljaPDjAqDgCPO0JD7ou48klRiQwXl
         8krA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I8t3mm4X;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c06::229 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <gs051095@gmail.com>
Received: from mail-oi0-x229.google.com (mail-oi0-x229.google.com. [2607:f8b0:4003:c06::229])
        by gmr-mx.google.com with ESMTPS id v124si66777ywe.5.2017.09.07.21.33.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 21:33:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c06::229 as permitted sender) client-ip=2607:f8b0:4003:c06::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I8t3mm4X;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c06::229 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x229.google.com with SMTP id l74so4703358oih.1
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Sep 2017 21:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=CGsWkzmPPcVvlPsPjis6C53fxfGNx+LnOqPemUMDgOs=;
        b=I8t3mm4XjPAfO7NSvnhMUVUHXC21QhYoxX+1ouTq68bWKk/y8y5I/UJZcQi3yoWgjb
         Uihxhvq/zZuLWlkrtegeqbOC4Iv99Ao8W1sgYH429y/c1TDBGSBd+3Ivdp7+R+nYObe4
         3Sz/DgTCqNtbM/muAU7lv+wE+Vk4mwZeOOspAoq89e6UU3w1yv/+glcXtXIHp3ZdpSn+
         zYB+4h+zwUSSVbcmtiY9EsF3WbnlwQz7KL65SIi9gsXFb46bB0pSRSfqO0x7bQq1UDQc
         2VRyEHLdwRdGuvo4D1sLOnzR0QuZe6fbCD4Yn/bOAaF7GdUZCt2zpZsO3IaOMyM39qeT
         deDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=CGsWkzmPPcVvlPsPjis6C53fxfGNx+LnOqPemUMDgOs=;
        b=hguEqbJ6DlzLpTgwi4uTwJTGG+SybLuNx8uWg376WwD7hh/IKq5JJwJVAJW2jfYzQy
         2UEqvIioPgtvrDl+O8phPaSznz7Yem+KBn+HwwI0Z41brl56HK6etVf3Cvp5qYqIEppO
         HQu6AzCT2eFCuEAUkp21UqUyA0L47MBHm3Toew1nALIpbZb7lDfJmG++uBPp3hR8Wy4e
         oq5zdulgNnBS9Jr2oVT57zYOvETqIQNreZhpguh5eIOHcet6+qajLRVf92YLFWcP637A
         XAf3Vp0dGW2DeZWVL7117iFBNIvtcEwNsYqxzKBcKBvU0nby6C3gAGuH9SIkaLLo+yxb
         xiQg==
X-Gm-Message-State: AHPjjUjbl+yeqd6gKI0g5dEzG660x7clOAyGLspKugk0CC5geBe89KXj
	A7TybXrR35Fd40jqAthTYCRVXsV7D9qQ
X-Google-Smtp-Source: AOwi7QCZdf1Pa0qdthMdDG/ZKQMgKZXJZn7boxfNcdAX7xxJdAJiFst9U7/ThDTOuo0vI8Vbnv3gUEfslqcKxI3PW3g=
X-Received: by 10.202.245.73 with SMTP id t70mr1658384oih.214.1504845207386;
 Thu, 07 Sep 2017 21:33:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.128.136 with HTTP; Thu, 7 Sep 2017 21:32:56 -0700 (PDT)
In-Reply-To: <405d02a3-830c-4edf-94f8-26a22db5d71b@googlegroups.com>
References: <405d02a3-830c-4edf-94f8-26a22db5d71b@googlegroups.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Fri, 8 Sep 2017 10:02:56 +0530
Message-ID: <CAOCi2DEA4wbfkpouWZsZ=3BGX_sju9um2mAd0XADn9t_mFZjJA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Not able to send mail to the mailing list
To: Neetu Yadav <yadavneet7@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

Hi Neetu,

Can you tell what error you are facing? We might be able to help you
better in that case.  Also, if you are on a university network,
there's a high chance that the network security stops you from sending
mails using mutt/ git send-email. Your best bet in that case will be
contacting your network admin or using some other network.

Thanks!
Gargi

On Fri, Sep 8, 2017 at 3:48 AM, Neetu Yadav <yadavneet7@gmail.com> wrote:
> Hello everyone,
>
> I am following the instructions of the outreachy first patch tutorial. But
> even after setting up everything in the "submit a patch" section , I have
> not been able to send mails.
> Instead of using git send-email or mutt, is there any other way that I could
> possibly send the mails ?  If not, could someone help me out with the
> configurations for email setup?
> Any help would be appreciated.
>
> Thank you,
> Neetu
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/405d02a3-830c-4edf-94f8-26a22db5d71b%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.

