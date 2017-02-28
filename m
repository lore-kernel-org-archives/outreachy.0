X-GM-THRID: 6392066069080571904
X-Received: by 10.36.26.80 with SMTP id 77mr304915iti.32.1488268857742;
        Tue, 28 Feb 2017 00:00:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.241.9 with SMTP id c9ls2714083iti.5.canary-gmail; Tue, 28
 Feb 2017 00:00:56 -0800 (PST)
X-Received: by 10.99.177.10 with SMTP id r10mr321805pgf.125.1488268856895;
        Tue, 28 Feb 2017 00:00:56 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x236.google.com (mail-io0-x236.google.com. [2607:f8b0:4001:c06::236])
        by gmr-mx.google.com with ESMTPS id e196si189781itc.2.2017.02.28.00.00.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 00:00:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) client-ip=2607:f8b0:4001:c06::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x236.google.com with SMTP id l7so4475043ioe.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 00:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=hQweMs3g8t1H/eePpjR++ktvEx4oa75P3PLOo0QquhE=;
        b=XBx8TPlNWq+4+Zz7ki3OB4HU6vrlepvQc9doKejoGi/t/bzZMRBE+CgD2b4tQn+imC
         YHwHKnNDdFz33cC3sGRACo6MRI6BnjlPIX17xCoYBu+LB096a9M9cOcI/W91tjcRqBZO
         aiOXLeU9gCdJ0N30DjG3k2UiWOTQ0rOGqZFwmSUx7rux/evXplt+tiD0byxCbDUapXdg
         3+NfjzbFIJ8t3zoHaBMXI9r/lswHdz4rGjInhBZRp5g+hjKmgtdW0CPCuL1GiM4n7NJ8
         kgxHkSmWKOOrKtmaVIzLQEJUzomG60l6WNMH6VIW/eGnx96Cydze1OzzcHkPVQ1wd2i8
         faiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=hQweMs3g8t1H/eePpjR++ktvEx4oa75P3PLOo0QquhE=;
        b=X+UOX4V3mpV9pyayKQAuJ9cNVpPujXhXt8ylmIqG1KHTh0z9Sl3Xf3hHnLgzszJnn1
         0xDzzasEXjfCrwK4/1Kh3jY+ps0IsQLXPuU2l/U4jV2RCR/BJlKxy4HcIJRvCEuTeKeR
         d0Rf8vOVItRs9lxiZHch7n9GX/vVbizDJAi6cfXsPzmQg72nY1s5+7bI3JY6Oho6PIS8
         xfLnuhwAp68bEHE6Of5mQr1aqJMRJhKonVTNBH+EUxtZWGrQEqqgTMsFe4BhHMY+nseJ
         NSBiKOSAGihGo55I/GpcSEBsvDxUK6k1Z73x2udOGRGqaCphSg9IYBW6Kz/JX7/aqr3Z
         MdqA==
X-Gm-Message-State: AMke39nIMQ46Jc3GjK7a/1KVvZxRtQXp5ponDqQwV/L6x43sNzPvOh8zmcaT2gHR6sJ6gGUJAC3Ly93QwVNnPQ==
X-Received: by 10.107.137.226 with SMTP id t95mr1349337ioi.79.1488268856317;
 Tue, 28 Feb 2017 00:00:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Tue, 28 Feb 2017 00:00:25 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 28 Feb 2017 13:30:25 +0530
Message-ID: <CAOCi2DHRWdVv_LXRcQ60Xs_NmkroOf4jBbW2NKF=0ckfzd391w@mail.gmail.com>
Subject: Python script to send mail
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/mixed; boundary=001a113ec7b683b69e0549929815

--001a113ec7b683b69e0549929815
Content-Type: multipart/alternative; boundary=001a113ec7b683b6990549929813

--001a113ec7b683b6990549929813
Content-Type: text/plain; charset=UTF-8

Hi,

I wrote a script to send a mail to all the maintainers for the most recent
patch.
Please find the script attached with this mail. Appreciate any feedback you
might have.

Thanks,
Gargi

--001a113ec7b683b6990549929813
Content-Type: text/html; charset=UTF-8

<div dir="ltr">Hi,<br><br>I wrote a script to send a mail to all the maintainers for the most recent patch.<div>Please find the script attached with this mail. Appreciate any feedback you might have.<br><br>Thanks,<br>Gargi<br></div></div>

--001a113ec7b683b6990549929813--
--001a113ec7b683b69e0549929815
Content-Type: text/x-python; charset=US-ASCII; name="send-email.py"
Content-Disposition: attachment; filename="send-email.py"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_izp8qdlg0

JycnCglBdXRob3I6IEdhcmdpIFNoYXJtYQoJU2NyaXB0IHRvIHNlbmRpbmcgYSBtYWlsIGZvciB0
aGUgbW9zdCByZWNlbnQgcGF0Y2gvcGF0Y2hzZXQuCglUbyBzZW5kIGEgcGF0Y2hzZXQsIHNwZWNp
ZnkgdGhlIGRpcmVjdG9yeSB3aGVyZSBhbGwgdGhlIHBhdGNoZXMKCWZvciB0aGUgcGF0Y2hzZXQg
YXJlIHByZXNlbnQuCicnJwoKaW1wb3J0IGNvbW1hbmRzCmZyb20gc3VicHJvY2VzcyBpbXBvcnQg
Y2FsbAppbXBvcnQgc3lzCmltcG9ydCBvcwoKI3RoZSBjb21tYW5kIGZvciBzaGVsbCB0byBleGVj
dXRlCmNvbW1hbmQgPSAnZ2l0IHNlbmQtZW1haWwgLS10bz1vdXRyZWFjaHkta2VybmVsQGdvb2ds
ZWdyb3Vwcy5jb20nCgppZihsZW4oc3lzLmFyZ3YpPDIpOgoJcHJpbnQgIlBsZWFzZSBzcGVjaWZ5
IGEgcGF0Y2gvcGF0Y2hzZXQgZGlyZWN0b3J5IHRvIHNlbmQuIgoJc3lzLmV4aXQoKQoKI2lmIHRo
ZSBwYXRjaC9wYXRjaHNldCBpZiBmb3IgdGhlIGlpbyBkcml2ZXIgaW5jbHVkZSB0aGUgaWlvIG1h
aWxpbmcgbGlzdCAKaWYoYXJndlsyXT09ImlpbyIpOgoJY29tbWFuZCA9IGNvbW1hbmQgKyAiIC0t
Y2M9bGludXgtaWlvQHZnZXIua2VybmVsLm9yZyIKCiNnZXQgdGhlIG1haW50YWluZXIgbGlzdCBm
b3IgdGhlIG1vc3QgcmVjZW50IGNvbW1pdAptYWludGFpbmVyX2xpc3QgPSBjb21tYW5kcy5nZXRz
dGF0dXNvdXRwdXQoJ2dpdCBzaG93IEhFQUQgfCBwZXJsIHNjcmlwdHMvZ2V0X21haW50YWluZXIu
cGwgLS1zZXBhcmF0b3IgLCAtLW5va2V5d29yZHMgLS1ub2dpdCAtLW5vZ2l0LWZhbGxiYWNrIC0t
bm9yb2xlc3RhdHMgLS1ub2wnKVsxXQoKI2NjIGluZGl2aWR1YWwgbWFpbnRhaW5lciBvbiB0aGUg
bGlzdAptYWludGFpbmVycyA9IG1haW50YWluZXJfbGlzdC5zcGxpdCgnLCcpCmZvciBtYWludGFp
bmVyIGluIG1haW50YWluZXJzOgoJY29tbWFuZCA9IGNvbW1hbmQgKyAnIC0tY2M9JysgbWFpbnRh
aW5lclttYWludGFpbmVyLmZpbmQoIjwiKSsxOm1haW50YWluZXIuZmluZCgiPiIpXQoKI2FkZCB0
aGUgcGF0Y2gvcGF0Y2hzZXQgdG8gdGhlIGNvbW1hbmQKY29tbWFuZCA9IGNvbW1hbmQrIiAiKyBz
eXMuYXJndlsxXQoKI3NwbGl0IHRoZSBpbmRpdmlkdWFsIHRlcm1zIGluIHRoZSBjb21tYW5kIGZv
ciBpbnB1dCB0byBjYWxsCmlucHV0X2FyZyA9IGNvbW1hbmQuc3BsaXQoIiAiKQoKI2NhbGwgdGhl
IGZ1bmN0aW9uIHRoYXQgcnVucyBnaXQgc2VuZC1tYWlsIGZyb20gdGhlIHNoZWxsCmNhbGwoaW5w
dXRfYXJnKQ==
--001a113ec7b683b69e0549929815--

