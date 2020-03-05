X-GM-THRID: 6800771854723186688
X-Received: by 2002:a05:620a:22b0:: with SMTP id p16mr8515631qkh.468.1583428088437;
        Thu, 05 Mar 2020 09:08:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5057:: with SMTP id h23ls1180780qtm.8.gmail; Thu, 05 Mar
 2020 09:08:05 -0800 (PST)
X-Google-Smtp-Source: ADFU+vtZRl+KT2aYRlzxd3T7vTNGfRq1HQX7TV1Sk3cPMhTHW8RCC2Og9GddorpyAsyM39sOCpM3
X-Received: by 2002:aed:38ea:: with SMTP id k97mr8171848qte.327.1583428085187;
        Thu, 05 Mar 2020 09:08:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583428085; cv=none;
        d=google.com; s=arc-20160816;
        b=YphkH3A/u7vgFcpWKhuTVVejcVggvHHQBrekuPtSyuBV9JPuBjp+PP82WruFVhRSi3
         WaGBFHzCr3n9VorHOAjLRCWU6ULTtqE3+rMh1w5ALCnKOENhvakZ1LmMMOB+CHFVezu0
         y4Lhe2zFcDGCPy4DBwMnYpCL6/s0W7erC1ALEzowr+8t0w1Es74QHKxnpIUc0fa/ViFM
         CxjFRhVqQFehi+H3e5+wAB8EF3t83LkTbU2cU9NRY5AFtPiO8BJ2jZtUD4JgZjEsbkyj
         QVurKgXj/5tV4Iv5+qxjQ4wOLDMUxnYtLyKE1JpNtcCBHPWmLD6ZOo9nLiudl/dNVdb3
         OAaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=R5kxT8H9rNI5+mK4wBGYwna0Yy+ZnAY2DEj3bgOg2SI=;
        b=YgCUAaOiINQaPZO55JFXjk0awa7G394MNWxuJTdt4YYHTFjhgpR6m75aJ4P6X1M6Ad
         5UgEgGao8Jj59P6/KKpi+dpwFHz4FH3SSH8zY+sMx0qC7KA1n0iEznwoNvZlV4hqORHR
         IbvylRdgIYZRYTS1uP5fgNXBDyP/QrTEf8Shy2tvZ8Y8Aw3+Oo1JxIpGVTLbvEADKK+c
         UtRFNDx0fbbK1g5UcZT8+2d0VMvW4eRDkjyn8uJubLrpvL3xK1jWgrkbUAvHMpl2StCI
         qL+wnkuOqGCioUMVjFAo298rV6VI9L34NqzSgneWmkYOb3AuKLKQFITm1gSrWUoqpg0I
         woJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H0kKoxI/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id g42si310157qtk.3.2020.03.05.09.08.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2020 09:08:05 -0800 (PST)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="H0kKoxI/";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd2c.google.com with SMTP id m25so7262022ioo.8
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2020 09:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=R5kxT8H9rNI5+mK4wBGYwna0Yy+ZnAY2DEj3bgOg2SI=;
        b=H0kKoxI/1LCRPIejnBdRTUGx4sToehu/PSOX4RuaVVI4EFYPIzI8C3fUEnraLlhS8M
         EeSmMqjMHrBTr5+snAtFzMfgwow0YM7PDIHrfU8yA/OQrJoWAEynGOEhT/MqAr+bCPPO
         NUQibToiQu/LsfHVNTqXb/WL7/XJ9vcFS0iOFDCDIEyoB3PSZoEIo0poSkH3KxSrE2+J
         rdZztJK1rVu70w/VPReg0SR81t2ywonFu1UWn0hfoR0+PAmAF5GbiR+G2ys1CSlBfuO8
         njdbMqyiOy9JApHfng7PgUOekEsCRMxgFegL3XIN/+HfnKjGzQOqkXOqhmS8GttkFBcb
         m/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=R5kxT8H9rNI5+mK4wBGYwna0Yy+ZnAY2DEj3bgOg2SI=;
        b=GnvzSaFh20LHe8gtj4Gkl1bOmM84HayzSCgr0+fkz9yTwjmEK5O4uFyhlzsYYj5JLX
         y8QVp0yTeNUX0RFcork7fGBC5/vVEyEs+jD5Qum0bjFquDDOrnEyvxT+xjBl/M+s59IX
         EDRQYKEiF3BUwN8dbWMOWPX7GZmDZgKEpDX3gpyS2bpS1bkNTiyN+NcEF0MB/Tq1pDJw
         LizYAiAtgET/xUr5Ni1xBZQyOE4Lc/BNMsPDTbgcuck4oQkyiOIxREqTVUMMwD+Njx3Q
         nQ3FRYXqaSrIlpt4rs02+xKQrYutgMp3mdlcilvYoqbaTvxuacpJgeQbvvklif/GbXCt
         iNfw==
X-Gm-Message-State: ANhLgQ0GjoyvqJE1RvDRqHzlPAdAskYSbK4HsLRhmMJlP7aTfA6w7bkO
	cRVrXUeFnM2ACHMHxV13WijqxP+ODUsmInCoaXmcyl/+
X-Received: by 2002:a5d:8f03:: with SMTP id f3mr65188iof.28.1583428083152;
 Thu, 05 Mar 2020 09:08:03 -0800 (PST)
MIME-Version: 1.0
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Date: Thu, 5 Mar 2020 22:37:51 +0530
Message-ID: <CANTOzWHSNXEXaGo-0e9PUsCFvX5QmsVmfF4qJa3ii=H9Cs+B6A@mail.gmail.com>
Subject: Issue with checkpatch.pl
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000006c7aa605a01e9486"

--0000000000006c7aa605a01e9486
Content-Type: text/plain; charset="UTF-8"

        I am trying to find files to cleanup using following command
~/git/kernels/staging$ perl scripts/checkpatch.pl -f
drivers/staging/android/* | less
and I am getting a prompt as "Must be run from the top-level dir. of a
kernel tree"; I am running the command already from the top level , I am
not understanding how to solve it please help me regarding the same.

Thanking payal

--0000000000006c7aa605a01e9486
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 I a=
m trying to find files to cleanup using following command <br></div><div>~/=
git/kernels/staging$ perl scripts/<a href=3D"http://checkpatch.pl">checkpat=
ch.pl</a> -f drivers/staging/android/* | less</div><div>and I am getting a =
prompt as &quot;Must be run from the top-level dir. of a kernel tree&quot;;=
 I am running the command already from the top level , I am not understandi=
ng how to solve it please help me regarding the same.</div><div><br></div><=
div>Thanking payal<br></div><div><br></div></div></div>

--0000000000006c7aa605a01e9486--

