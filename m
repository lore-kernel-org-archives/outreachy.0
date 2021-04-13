X-GM-THRID: 6950732007035895808
X-Received: by 2002:a17:90b:3648:: with SMTP id nh8mr1704853pjb.150.1618343407342;
        Tue, 13 Apr 2021 12:50:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:903:1c5:: with SMTP id e5ls3715115plh.6.gmail; Tue, 13
 Apr 2021 12:50:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxkIIwrmP1cTLIxSokLJDQ1qzGeWTzTCKLIcGqIwZfNhk2nLanADJXoN161b234hzSciL+W
X-Received: by 2002:a17:903:31cc:b029:e4:bd48:c8e3 with SMTP id v12-20020a17090331ccb02900e4bd48c8e3mr33131106ple.40.1618343406220;
        Tue, 13 Apr 2021 12:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618343406; cv=none;
        d=google.com; s=arc-20160816;
        b=XgmfuSYmFxkwYgTKn98HwkabML5O1P5qzXNhGEGtap5Ccyf4unHZWlD751+br+JBUo
         KlNPO27I5qQamwyBsepPTzuH3JN41IBUFAq+wdF0p8gWUJOUM1Sw3VID4SBlP5hmGTSa
         /5pviUePKNkrcmvmlaeRKaMfKtNxvIuUQ9VEbMoqYoOr8oM8jusHXKkPL+MUIV2gNMcc
         CVpgD43h39GmQy1LrLJMRPIo3IPIEDsmd9R6xQ/4ZEDMCf7qq6CkJ9Ix7bnn1qYkhvNe
         vw9eCGPY//wVS7yc8qLA4AgdOpd9vGCatrEKin52SydDZZ66PRsr6D3pcg3kBuHvQWV8
         YNxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=d5JQs8Tx+1jZkGxhLa1z0jf/2TQov6WAQJIdCWJLtFk=;
        b=Xh2sqhCkShEaiTvpPyKfA5O1bFVkSDeE43wR/qndEFd31D6no49P2EpOeePUWngocU
         UOy/4JlFpZBtpLaCOZveY3G7bHi6rIGfrqwA59GgOncHB5lqn49rwdWZM6SdRnR0XslT
         KLUS07Hkwt3NSOhgANwJKUt2+KomScPIqLTAxr3LUOSUhIS8koQthUXdRhi0PRKKsejQ
         VtS1qyd3BaXN9EaxJhJgKeslULkTIWVRmqy02mltgekFcXXIfo0v1TqAY8HutMNWT8Q9
         4Qde4q08LIAjAGLuLa10tIbYxYhCA942NcEbQqArDGF209ZQSpOYcSQlaakx+ipcZRTo
         47YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QO5ZH0XW;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id t5si1409527pgv.4.2021.04.13.12.50.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 12:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QO5ZH0XW;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102d.google.com with SMTP id u14-20020a17090a1f0eb029014e38011b09so4735490pja.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 12:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=d5JQs8Tx+1jZkGxhLa1z0jf/2TQov6WAQJIdCWJLtFk=;
        b=QO5ZH0XWGCAtSnFQasOblaMQqYmA7DsyCoftBXbx1i3qQ263FErvWqdiQuSnH2EOKP
         PEe6WigtGLK5Az5GBaaABOIj3PBGmfUoePMX/7fhc4A1B9nEJHRCXe0EpX1X3TMf2zYy
         dw1idnzkClh6WfP874wu34eSBc/wNP10brzFHT46QNjjG8iiTV2s4e2kyt+bPj8HqxWA
         RBmxmwQ1yCa232XdNRcsdjjJfCf4Ce45obhz0nu2AboimowAiPseA3sQwS2h7L0OEtg5
         ydM7A4DZgH6mhkA/72zbW8trxYbj22pxI6GFkWMDiub5jnp0PGMK/63HtvO/NfCuVTqC
         vWaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=d5JQs8Tx+1jZkGxhLa1z0jf/2TQov6WAQJIdCWJLtFk=;
        b=lUtRDBS2QwzK678+QPi5HAOIm+y/idKV6jkltjgwWtox0mZyUpqIuJ02j3AiExHFOI
         PMDryDEA45i9ixgrfl1M8caw99leshiouM3wbkrLPUzMnVaA/13A7pQ+dICEHfLfoI84
         TPZKm09OR8SfmvlK+un7X1pwtRge2eR3/benhh7bE+LlVnYox/uUtGkFY4W7RBNnzNJ4
         xHFpCS0gGdM1/hmGDjPdwJ3skxxAwjRxDg0O2knHpGu32/H8bLNJc3Gqq7L7EdkZHzbL
         igSgZBdu4uluQvFcuBm4osIx0ilGHxSclSgkQfKgebkRI4FrKjtLnBhLariGdz2nNnux
         EmsA==
X-Gm-Message-State: AOAM5304TwYPHSEgNpewyKZ9c3OfIER3lSUV6/AGBiCnQAyAHbUzUIdi
	F6yIF/dAPQrOoMhIACOriyI=
X-Received: by 2002:a17:90a:7f8b:: with SMTP id m11mr1631827pjl.221.1618343405874;
        Tue, 13 Apr 2021 12:50:05 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id c1sm13350924pfi.142.2021.04.13.12.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 12:50:05 -0700 (PDT)
Date: Wed, 14 Apr 2021 01:20:00 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH v4 0/2] staging: media: zoran: Cleanup patchset for style
 issues in zr36057.h 
Message-ID: <cover.1618342050.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Changes from v3:- Rebased these patches and made changes against
mainline code.

Changes from v2:-
[PATCH 1/2]:- No changes.
[PATCH 2/2]:- Aligned the code using tabs.

Changes from v1:- 
[PATCH 1/2]:- No changes.
[PATCH 2/2]:- Aligned the code using tabs and readjusted the
comments line.

Mitali Borkar (2):
  staging: media: zoran: add spaces around '<<' operator
  staging: media: zoran: add BIT() macro and align code

 drivers/staging/media/zoran/zr36057.h | 312 ++++++++++++++------------
 1 file changed, 172 insertions(+), 140 deletions(-)

-- 
2.30.2


