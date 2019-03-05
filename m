X-GM-THRID: 6665043213885112320
X-Received: by 2002:a5d:4d87:: with SMTP id b7mr54687wru.21.1551826301846;
        Tue, 05 Mar 2019 14:51:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1b94:: with SMTP id b142ls517345wmb.8.canary-gmail; Tue,
 05 Mar 2019 14:51:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqzDBI+Zz8XZNlG8uY83ej0B7aH1GoCCw5Q1rAQ12CVPy5IVlCKKiQlWefkMZWk9e1IpVUaP
X-Received: by 2002:a1c:c704:: with SMTP id x4mr496228wmf.7.1551826300819;
        Tue, 05 Mar 2019 14:51:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826300; cv=none;
        d=google.com; s=arc-20160816;
        b=Tpcbv4824ZmqHEyTXvj/+0ysg5uVArl4Jp8B3An9i07G9rPp2bJNzyWeBY/CgeFYUb
         CjP5xGUFffy7873G3pZL7y2d/A8QuO8YBpZg2stajhjmPe7KhDI/Vg1aSyfMDj4/VsgU
         6WZIi1NoJZzlylPdpjBymryDtzTbpK2fwFNkHRdugUl9IBsdWHDOvl0rataOr+dazuAf
         0oagKrqKWNi6GE1XqvADxFXoh/mcd6jzgE5Bcs6IsxXIz+LTmkfouQ3yAlgQ+KNxhpL5
         sppHOdz0SzEUAxm3j2ZLrktjgD4gLetbmpk0B8/Zna1TNQH/C7M0lYnaj9jNiTl0rwlW
         37GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=DIAGgxk7GIotlocJphQ/HzAmQhbN4VPg9Lba8yiTcPw=;
        b=QVQYFGYIFlirT5Bwe02/fL+aHO8I4t28oZlV7kGDECOlM/fVI99qKWiG+IPCtMnOFj
         bhyzldVb+IzMsyjxE5oiDT8yJQpCKB0V7UuCfDnkolWiCzxbxZbEpWHQEIm/CMph7caR
         0sfTrOjMYmZIuRJGnud4ueXXAs43Sz+gilkJqs7tu6JB+/yq4q+Wfcto7LyxXxgXNoZh
         6hQnpIU5djO52DzpPW1VHEVp/FdO1izkSSaTNhkommW68tAosOFr9y9uK9VjF9nDb2Z5
         fthv47w9/4EMxcjNvDlwhNLmY26SCxtPdMkPKl3FHljFSdg8vHJ6ypDZJYa4gZWz/PSr
         ThIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3fu+F0t;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id c24si46516wml.0.2019.03.05.14.51.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:51:40 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I3fu+F0t;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x429.google.com with SMTP id d17so11257445wre.10
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DIAGgxk7GIotlocJphQ/HzAmQhbN4VPg9Lba8yiTcPw=;
        b=I3fu+F0tAVfJued40KcV6odlSA+B/PBByEUTO1lIimFmnvEcQm9VnKNLkKm2lettOV
         Kh5iYbAYRmofx18scHWwIrBjI2fU3KktBVbMPbLtHRMTDZG9RFDzcLD+ycoPCWHGXJX4
         znFV6cN3wY9dVzunK9lqK1Ajcl2kXkkKp0s7ZY2pu0BvhNKoqxtvhCfR0E0AcLe9BtKC
         VjZRC0OWdwQ7hQu/5TGdLxrmcOPPS2X2zmKPjAIphrHnHQ8cZeYHHyQ7dVE1DcGbwytz
         1yX/Q3Lg9z1msLnA+tYtXFgGMlkMtju96U934NODS+zww5fblTbEKioHF21RzI5U+TCO
         AnrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DIAGgxk7GIotlocJphQ/HzAmQhbN4VPg9Lba8yiTcPw=;
        b=ZJ8rlIRTtRMpUI8G3ujNRJZgMY1aIgm+wU7yBp0lB6FEwc6wrVUTReQgAoTjfbwjMp
         OnykMDjDRxlro6b6tTqhAeoN03ZFHAGg9lmydIl469FBlQ6DDkZ9mHZgfx4hNkYaRNLA
         y5CfQ+5LrxgIr7Ai1CffddxgE+WfJKytNAXjDPAH9ViYDFsyKorslFk7ykV2levQHpsZ
         +anwzCnmm8ovBeoQSG9g77OBi4dhJLpD41+0rlpU06BoMsSjS4wXWQvgd05mJzWm9PcL
         ZsMT8gj5WU+ZVwNA+2as1tFpxSlqFpU4Y3mzc/oHswe7Pz9qpa0BdH3OjQfxzNra+lfC
         81iw==
X-Gm-Message-State: APjAAAUd8bkU2mbnAoay48Ng1reXqhZkGrJYy7ElRL8fyA0aSg+dTTRH
	GY9O/q8INAo8VbyzpbuIkME=
X-Received: by 2002:adf:b211:: with SMTP id u17mr804501wra.322.1551826300542;
        Tue, 05 Mar 2019 14:51:40 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id f196sm92305wme.36.2019.03.05.14.51.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 14:51:39 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v5 0/2] staging: vc04_services: Fix two checkpatch warnings
Date: Wed,  6 Mar 2019 00:51:37 +0200
Message-Id: <1551826297-28015-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

These patches fix the following warnings:
-Avoid multiple line dereference
-Logical continuations should be on the previous line

Changes in v5:
-add driver name in all the patches from the series

Changes in v4:
-add driver name in subject

Changes in v3:
-add cover-letter to patch series

Changes in v2:
-make these a patch series

Daniela Mormocea (2):
  Fix multiple line dereference
  Fix logical continuations warnings

 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 51 ++++++++--------------
 1 file changed, 19 insertions(+), 32 deletions(-)

-- 
2.7.4


