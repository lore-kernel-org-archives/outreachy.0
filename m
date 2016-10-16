X-GM-THRID: 6341988616413118464
X-Received: by 10.159.39.169 with SMTP id b38mr1624067uab.27.1476609291598;
        Sun, 16 Oct 2016 02:14:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.19 with SMTP id i19ls4226942ioi.46.gmail; Sun, 16 Oct
 2016 02:14:50 -0700 (PDT)
X-Received: by 10.107.174.15 with SMTP id x15mr5925672ioe.72.1476609290679;
        Sun, 16 Oct 2016 02:14:50 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id g8si1718351ywe.2.2016.10.16.02.14.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Oct 2016 02:14:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id z190so11673207qkc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 16 Oct 2016 02:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=1qUokh7e7PBL5Jeku1EaOTZxnNdpzBT2mGMesIvqPRg=;
        b=TYgqhpnor3A6+Igv9vkpTP31qErRnE2A4HRwLLbxfkH9MJiOmubqZGVRFfvra2I8MV
         Mo87KyvxWwORK29HRUyIXPSpxG9W55CxBgjXhVLpJi9yG5BsFpI9VeP37vsexo3JlLxs
         W5O+z/QQpnSjgvw5hFWlxNKrE6HQYnVQlOZN1k+BBRuzLsZIsAjjl2MHV9tXVFSmKZJr
         XUJ9iyc9iE4gzEyJKWx3N+6elcWYszhJJ6QHC2FsHf/uUMrL5MN9+mANECa30FeyhpX7
         5uPvd02MUSRd5v2Dis07zpsh3lklLZdMuRG/4kA/K8RF+BuI8HXZJ9rM0UJaCuWT/T2w
         NoBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=1qUokh7e7PBL5Jeku1EaOTZxnNdpzBT2mGMesIvqPRg=;
        b=gwwJdqyYFiey/XYEtaDTm0w6flRTqT4XyGt2V8U4D9eAoBmne+dk48Z4lMjsnzH3Ma
         qIBo1IJLSUhf1rfMv0x/eBQSI4SwyAvgAKrYfM14J3cPCKW0NYXV0xxuRWZT8I/KPkJT
         G3DXHf6v30NITAjr16THq2fX5/CgDcMVbcBPyySFngzK4I5GV0QUhV+gsfWr8nnCSmnF
         FWBhBIekLzP88AcEiiOfjMAqxxYkcJKiOpTnjKaRCkzdO6E3aNWnoomePqTk0PrlNXRa
         ncaMXgar7tePX1mMj8Y3syqA96Dj9ytbRf3OqpdaKstQ1RfORzGolkPWC6USU+mlbxD5
         tCOg==
X-Gm-Message-State: AA6/9RkMB8+lbPDCI3CS5yDXCkMz24H5fbzOoABolahY1aYdsN0aUsPbOTiM9r8mBDGzK2aLPwEeTOui4gxsBg==
X-Received: by 10.55.151.70 with SMTP id z67mr21591802qkd.185.1476609290447;
 Sun, 16 Oct 2016 02:14:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.50.42 with HTTP; Sun, 16 Oct 2016 02:14:20 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 16 Oct 2016 14:44:20 +0530
Message-ID: <CAOCi2DH08-HimwEs+SU=TcQBpi9RnHe5bafbFFi=oW=vFU1_6g@mail.gmail.com>
Subject: task for radix tree test suite
To: outreachy-kernel@googlegroups.com
Cc: Rik van Riel <riel@surriel.com>, willy@linux.intel.com
Content-Type: text/plain; charset=UTF-8

Hello Mentors,

No task is listed for the radix tree test suite project on the
Outreachy Kernel Page. Will a timeline for the proposed project be
sufficient? Is there a small task I can do before the deadline
tomorrow?

Thanks
Gargi

