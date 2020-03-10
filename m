X-GM-THRID: 6802299057078272000
X-Received: by 2002:a05:620a:16b8:: with SMTP id s24mr19760647qkj.104.1583843470629;
        Tue, 10 Mar 2020 05:31:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6487:: with SMTP id y129ls280634qkb.10.gmail; Tue, 10
 Mar 2020 05:31:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvaMx/kCVDmiyJ96Yd6xDRwfEibT8PTnbIaGQLsfg8w1Hgnu4lB6TZ+PXSEkq7K55vBazvf
X-Received: by 2002:a05:620a:128d:: with SMTP id w13mr19287989qki.191.1583843469239;
        Tue, 10 Mar 2020 05:31:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583843469; cv=none;
        d=google.com; s=arc-20160816;
        b=NP9eKnTGyoEm3Mw9Su9vt4Ed+fQdg3EDaG+ut/dHS27x5LcXDBCeVFWfwDkn/tjxBb
         x5FKp3PgEA47/xrLIKc/preTabhfAo/WYTRk9H3Ghdqju4cC3nkOprertTGtxOjfbTIl
         EaAtr4RJwoRWl8KQ5F/6t7/tu61/4WreSfmroDfHwwWXLg70mlvvGZVej5Wd/QWnJa7E
         Wbgs9DOG+KD2PCGFkiUbgiaV4l4BpznPAe/iqumr7FWVvoG0rvNFknhN6dRcDxr8bFIV
         48EDDBvP5MEccmzy/GMkcFNd4qw6kkmmNRqADlGJAPhMzKgqrKrGg7nCBKmOtu3/7RoF
         HdLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=PF3T7g2afbeYWEEJEQaan/YGii9Qc0MzIcFXbRuMIoI=;
        b=A6nYsEt6PLS2T7U30W+N3amfMp1ToosTydDiNtgI8N5BuLS07DTRl1aNT5qB1Nu8Uz
         q16LzJkUoy5v/XKRV6gsGy/v/ADVP+t0exGmKFVtCnlLqwnKbSMDosAKAvDIPeE8DKOq
         DBe8U6U1ITRq890FviU6iZpCUxifLn8k7ctfq2Jg/BDfRy9swdDXAlTMjtTQh6nask0T
         jTlXXBWzx6OTKn59EOdDHc+k5yqitqghxoFBTtTyyFv6w8mopwXb/QUDSibZSjR4irJJ
         42spM3UWwVn+uuUU3RtHcEl7w1fMAcdQczhcMD+STup+v7pT74BaivspK7ReRGMPgxlK
         lESg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-06.prod.phx3.secureserver.net (p3plsmtpa08-06.prod.phx3.secureserver.net. [173.201.193.107])
        by gmr-mx.google.com with ESMTPS id 198si696013qkh.7.2020.03.10.05.31.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:31:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.107 as permitted sender) client-ip=173.201.193.107;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.107 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-lj1-f172.google.com ([209.85.208.172])
	by :SMTPAUTH: with ESMTPSA
	id Be2NjFmYxJnGnBe2NjiaMi; Tue, 10 Mar 2020 05:31:07 -0700
X-CMAE-Analysis: v=2.3 cv=JMBFTPCb c=1 sm=1 tr=0
 a=FtUkoPZcf/lZNycUVsF1BQ==:117 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19
 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10 a=SS2py6AdgQ4A:10 a=pFd2Zl5z2vwA:10
 a=ZZnuYtJkoWoA:10 a=Xbn4kQIpAAAA:8 a=HSH3I21XaMVOit-cxokA:9 a=QEXdDO2ut3YA:10
 a=ILJjHVj0aWZh_QbchXkF:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-lj1-f172.google.com with SMTP id g12so1603971ljj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 05:31:07 -0700 (PDT)
X-Gm-Message-State: ANhLgQ0sm38INckegUCpOqCue6dQCKlsjkDshl4b6PwmODowZhyaoX7a
	njKVp0xhv4fN0nrjF4llh+xM8lMSBr0QqaTdvW0=
X-Received: by 2002:a05:651c:112c:: with SMTP id e12mr1924972ljo.7.1583843466669;
 Tue, 10 Mar 2020 05:31:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200309195423.GB6565@supernova> <CAK-LDbLNpCEPrzzCC+=wNtCSew26U4X=RLa-6OdoYjQqz8F+6g@mail.gmail.com>
 <5c9abbec-5383-4662-8082-bbb253861086@googlegroups.com>
In-Reply-To: <5c9abbec-5383-4662-8082-bbb253861086@googlegroups.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 10 Mar 2020 18:00:54 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+nxLsxHMjfUTC3U7=ouzTD_4M0Ue=ezz60-wfujEeeDA@mail.gmail.com>
Message-ID: <CAK-LDb+nxLsxHMjfUTC3U7=ouzTD_4M0Ue=ezz60-wfujEeeDA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Some questions about Outreachy
To: pplo <lu@pplo.net>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfKaWUe6EGZ8MJxY4ds0tZhruLKeoat/n76/TEJq6+r6UH/+Zn0Su7vKTTI5g7M6XPNn+QwbBVPmitp8WsObRvZsmB4i3xP6gEog8S0UUSgFouMA0uqnb
 AoW9y8/KtTBE075N3RTXKnrrGjj0FM/jUTA3uKRtvA7qs/19/k3rsIDXwFaKji9Z9CqP12ds4syZF6rZV7A+7IbikxMlh+GQQqk=

On Tue, Mar 10, 2020 at 5:53 PM pplo <lu@pplo.net> wrote:
>
> On Tuesday, March 10, 2020 at 8:27:08 AM UTC+1, Vaishali Thakkar wrote:
>>
>> On Tue, Mar 10, 2020 at 1:24 AM Lourdes Pedrajas <l...@pplo.net> wrote:
>> >
>> > I have some questions that are still unclear to me:
>> >
>> > In wiki it said that one have to make 10 patches and 2 patchsets. Is it
>> > 10 patches plus 2 patchsets, or 10 patches 2 of them are patchsets?
>> >
>> > Linux kernel is accepting 2 interns. Is 2 interns for all sub-projects or
>> > 2 interns in every kernel sub-project?
>>
>> We'll be accepting 5 interns for 5 projects listed on Outreachy's
>> website. I don't know why it is showing 2 interns on applicants' side.
>> Since Outreachy's website is usually under heavy development, it
>> seems that some features affect how information is shown to different
>> kind of users.
>>
>> Can you please send me a screenshot of where it is showing that
>> we're offering 2 interns? I can then check if I need to update any
>> information from my side.
>>
>> Thank you!
>>
>> > Thank you,
>> > Lourdes.
>> >
>> I've attached a screenshot, it's marked in red. Hope it helps you!

Ok, Thanks I've changed some information on the website. It
should say 5 interns now.

P.S. Also, just as a note, please make sure that you use
reply-all when replying to specific points so that people
who asked questions or commented in the first place
don't miss it. :)

> --

