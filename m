X-GM-THRID: 6805913239014080512
X-Received: by 2002:a1c:9ecb:: with SMTP id h194mr4026654wme.49.1584625160049;
        Thu, 19 Mar 2020 06:39:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c771:: with SMTP id x17ls1177196wmk.2.canary-gmail; Thu,
 19 Mar 2020 06:39:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu8Vctln5Xy4c3hbFoPgjUfig10/rMRNVapvwQbl8lGq2kel/FHDIbJZCm8G7GVWY7vsqJt
X-Received: by 2002:a1c:25c3:: with SMTP id l186mr3897383wml.49.1584625158778;
        Thu, 19 Mar 2020 06:39:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584625158; cv=none;
        d=google.com; s=arc-20160816;
        b=qs9+q1SfvQ0dpi8cMMKkTEsnNxddTxRPXj5DKWYSxHk71o013tWLchjDuqRkxuITQR
         ZmwvNFKDld2wtXUchOa1EAbNx0SkDyHn3uecp63gU9rH7upMncwSUGyE7Lj7RKkvbm+4
         sRg4kwtGtHKYCmQfAwIhxtlw7tUABTgjgqfoL1gvY4xuaJDNBlg+XSMrfKR/sdL1oVJu
         g0J9M3VbEtxxldzHent2auRaqONtTIHogheJ5CV/MEhbeZvogEOdSeGyFPCCiiwOHnWX
         Q2cy6TVOENsespMDtyFv+4oKM94zPx9oUV4lBiOSWVSo8ld/BtzPNJGW1zkPgdS6TLii
         nMfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=1IDvcu2/qgUWor3Hm6cZNkTXEIau9Cl6v1xGyuJvmK0=;
        b=EdXNQoGfPI9GxSk7NrS54CN4gR9D2qK8+drXubMppFY0twmSjh/+sRH9GsFrcwAkwn
         RRkJ0fEje5VZi2zXxN+sEQCf1pUhBepCvSBPGF48G/VOBzAgBrLaBYl9dBcIf/JQ51Vz
         +c8cEoIqrzceu1G5r2KfLQdc32oQnC+aihJjIRSivxFSnrK6OzRjFFtlvLtaVwA5x353
         m+9JAQK4LPILF+9j6BP7R0cW2eRoK/Oiie4HKFNk0CLz1XA64+CvBNHMmGOy05gLDZs0
         K6SDh88X6ywhN+AA/ilPxKs9uZTZDuDWtCd3v3+Le+GJ+I5jeCuEK5AMMtu2QvlYAVCY
         30sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id v12si38330wrp.5.2020.03.19.06.39.18
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 06:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 28886 invoked from network); 19 Mar 2020 13:39:16 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 13:39:16 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Correct typos and long line comments
Date: Thu, 19 Mar 2020 19:08:58 +0530
Message-Id: <cover.1584624834.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typo in comments found using checkpatch.pl.

Correct long line comments to match coding style.

---
R Veera Kumar (2):
  staging: rtl8723bs: os_dep: Correct typo in comments
  staging: rtl8723bs: os_dep: Correct long line comments

 .../staging/rtl8723bs/os_dep/osdep_service.c  |  2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 29 ++++++++++++++-----
 2 files changed, 23 insertions(+), 8 deletions(-)

-- 
2.20.1


