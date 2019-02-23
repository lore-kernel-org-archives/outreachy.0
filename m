X-GM-THRID: 6661107741495394304
X-Received: by 2002:a25:5d04:: with SMTP id r4mr1200053ybb.89.1550910002394;
        Sat, 23 Feb 2019 00:20:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:452:: with SMTP id 79ls3192847ywe.5.gmail; Sat, 23 Feb
 2019 00:20:01 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaRTVO16tQVh9TeM/ucgKOqLVGb5xb2Z7o07qFGBPmZNuNpWyT5dq9HKXH2Dy/PYWumvMWb
X-Received: by 2002:a81:5006:: with SMTP id e6mr1258490ywb.16.1550910001518;
        Sat, 23 Feb 2019 00:20:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550910001; cv=none;
        d=google.com; s=arc-20160816;
        b=F0X2FBPxNEhS9kQeXMHD+5GP5ZmW7TWn+FwvNg+L3frkon340/6tuFjQ1UPOJ3M2Eq
         51RMVLLfbl/m9lYiE7xS17Hci5zadqfc2lwZXS6PyraxvziXtwito1mMcMG4e2ewAloq
         9GGJvf0chrFguDdQefZf9+gOiKOkmvJp3I67YPXCFYkKs+e4GD9GyO7m5c5GGtqvsW1R
         ee6RvsjRc+n/kACCv91JVPIhVYALnbI+W0QIoOmI9W7RFlhNdhLo4gmtxbywIc3qZPUP
         bwgX9dISd7j2PtS7NN8oWK8+ozqGMT0KNwhO0DYt3jLlOlHfxKR6ORlr9i9VRj8LDbkq
         ScPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=eni/BaLfc4+HY4Tw2QPwTgjIL7O6qQ/bXRKUfJOzp2M=;
        b=VojUqAu/fJz5omb4v3BtQ308RsiBsTmw8c2Cziq9o6IAcOqCoTgHM+if3qtjlJObtf
         odBWfB+dwhV9hRdYhjnDTSHJ8BjFM/H0eTXRz9FhPw097HTEUQl7j11QlHDzRQKTl7Nz
         0ocsLiSur6+JwOdpfCbgegumYxUZNicQyLQcwXsFau7v817Xz7fd1FAoP6T9b/J8cRwI
         htJBun2Fw9iK2GkX0XOwJ7JSBHB8j24aVm7KSSF1uo5tpclrkMKBkcS5FYz2jrmhSM28
         xnupzaSO/Njq3E2d8/SCRwmvTX3YdfGyXqOXg3SgwOyyTkUMCGdl8b3/0alR2rVo/bjn
         dFMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7Unx9y0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t128si213426ywa.4.2019.02.23.00.20.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:20:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N7Unx9y0;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id d25so2167744pfn.8
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 00:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eni/BaLfc4+HY4Tw2QPwTgjIL7O6qQ/bXRKUfJOzp2M=;
        b=N7Unx9y0hkVNIpniaw8E3H15tSzPl73f2rtXI/ST4WnhuvgFFTMnAgAfNArn28TLWC
         zLBN1KITjH8p9OErWUwg0DvT70frTHKlf79y98XeMe3dkcPiNyX7lwQB9IvVIyM2Eckp
         YUtn58SpS4IONRxeDCI3p68vQayLq2lvHgfkg6kk7Q8SwtRtLp4HhSC6YwnPu+3us71m
         lI+i6p3WlhvlFvwpUQJrV7SQRD+c6g9iCW8ulrtm4pnsohZ8IXQpHbC+XHUm38vdb7ND
         mnCOF+IQswiQ4mypWz6NkdLHvJaj8GTYG9SMeQNla01Hho0Z5vGg7n9nYkudnumyMwal
         9t5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eni/BaLfc4+HY4Tw2QPwTgjIL7O6qQ/bXRKUfJOzp2M=;
        b=q4049DK37doIQtMDIi2gpxOrzDnR6WdaEzT5qQk2bgDpXGEGDNCDOL+T2hr6272MEL
         kTNoOCAHNoFbJQniD3wPhxsuBl8M5dyo+n8tevfsU4ZEPTR4RduP+WyO4ubhWGlbu0yh
         kKdWW09D04ykffttEJlL8YG+nkw0YoyloBBJVLzM8RPWJ01GOBngrdzYMav3jwZyVXqG
         55BgCyrh3ulsFXtT88oOYX0YztcEWHJ/gCuhKsf6h7DZbvGQaXjKCY7ERgL+CKsFCMk4
         dPtCZMtllGTmXpiqJgc0op010iGfWWcwjnAYYX43Z6ihBWE8/NAkroiYOhiao8/q+8jH
         uYbQ==
X-Gm-Message-State: AHQUAuYjhg/idnEyQ/J1x96RZigUQYkhNzk4p9agiJAhsZqGaYcGXJDF
	nnaA0p5SAC+DH/ehPWEjxMcB631vJLo=
X-Received: by 2002:a63:d64:: with SMTP id 36mr7678261pgn.360.1550910000551;
        Sat, 23 Feb 2019 00:20:00 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id z127sm7909280pfb.80.2019.02.23.00.19.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 00:20:00 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 0/2] Staging: mt7621-dma: Fix checkpatch issues
Date: Sat, 23 Feb 2019 13:49:39 +0530
Message-Id: <20190223081941.9629-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series cleans up the following checkpatch.pl issues:
CHECK: Alignment should match open parenthesis
WARNING: Prefer 'unsigned int' to bare use of 'unsigned'

Bhanusree Pola (2):
  Staging: mt761-dma: Alignment should match open paranthesis
  Staging: mt7621_dma: Prefer unsigned int over just unsigned

 drivers/staging/mt7621-dma/mtk-hsdma.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
2.17.1


