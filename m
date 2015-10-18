X-GM-THRID: 6206591728806264832
X-Received: by 10.194.192.71 with SMTP id he7mr5886401wjc.2.1445188582133;
        Sun, 18 Oct 2015 10:16:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.226 with SMTP id fr2ls470935wib.50.canary; Sun, 18 Oct
 2015 10:16:21 -0700 (PDT)
X-Received: by 10.180.35.132 with SMTP id h4mr3453185wij.5.1445188581766;
        Sun, 18 Oct 2015 10:16:21 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id bn7si6360wib.0.2015.10.18.10.16.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 10:16:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id fv8so48492111wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 10:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=EhluqSJ8dIiQqzBUOROZiPDURYaf6r4C7mqivajEsvc=;
        b=tWTedj0OupZeBGFn04KaOOyKoawYvoIucg7HxQy2kx0Kw/v0hovH9ziMnXdd5BVwzr
         iUdDbMEIaK/mz2JkYDgG17JbV+uDAMGJ5XXYszTqDZO5O61C5ilIqR1ZMLcMjDX1GGM7
         KhGHniNt+sr1PP6Wn/tr94bT+6/rmG4tSpDLUolAoKJRx/UoaC1eKGfi5G27P4p7kevQ
         qjMSOFm3Ui5mEFWUuNwgdt5lyamy0Y+0MJy7Cvya+EpGyBlcrFZsez0phaVfluj1v+PW
         c/NwnRQOh3GtXLRDb7QJlKeAhgzWqYTh+uss5ERGJ26yFd2VC2PPnZsRkZYluPJ98O9S
         Qjtg==
MIME-Version: 1.0
X-Received: by 10.180.211.47 with SMTP id mz15mr15382632wic.93.1445188581671;
 Sun, 18 Oct 2015 10:16:21 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Sun, 18 Oct 2015 10:16:21 -0700 (PDT)
In-Reply-To: <CAEnQRZBQ3adxxn-trtEWRdqfDUycQvzhjA1i0A68Z81CgUiO0A@mail.gmail.com>
References: <1445084735-20133-1-git-send-email-aybuke.147@gmail.com>
	<1445084735-20133-2-git-send-email-aybuke.147@gmail.com>
	<1445084735-20133-3-git-send-email-aybuke.147@gmail.com>
	<CAEnQRZBQ3adxxn-trtEWRdqfDUycQvzhjA1i0A68Z81CgUiO0A@mail.gmail.com>
Date: Sun, 18 Oct 2015 20:16:21 +0300
Message-ID: <CAEnQRZAM89=q=i=T6a5B_uveiDTs4e2otaZpd0JQj+pbP6Q0qw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: wilc1000: Remove
 unnecessary parentheses
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Aybuke Ozdemir <aybuke.147@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 8:12 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Sat, Oct 17, 2015 at 3:25 PM, Aybuke Ozdemir <aybuke.147@gmail.com> wrote:
>> Problem found using checkpatch.pl:
>> CHECK: Unnecessary parentheses around pstrNetworkInfo->u8SsidLen
>>
>> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

Ignore this, the patches are already applied.

