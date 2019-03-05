X-GM-THRID: 6664972943325396992
X-Received: by 2002:a05:6000:10c1:: with SMTP id b1mr8977wrx.30.1551809940882;
        Tue, 05 Mar 2019 10:19:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:81cb:: with SMTP id c194ls453882wmd.14.canary-gmail;
 Tue, 05 Mar 2019 10:19:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqyVxEItPBbSJuWiYK0WJdZvVTyMD3xXHmyOCxqwq+U1Ifz/FGiflKNNQFVAuKKjukKOj0qj
X-Received: by 2002:a7b:c3d8:: with SMTP id t24mr398220wmj.6.1551809940075;
        Tue, 05 Mar 2019 10:19:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551809940; cv=none;
        d=google.com; s=arc-20160816;
        b=F2ql0nKw23g/3RqT0fAS9m6yvYCG7lyNF8DXCveYzblqqIa++5wzXzJcImN80pdxQ2
         DycmPb6N/ZIrn50ifyPa0eRxi2HYRCruI5inPP/ZwamYFwPrNHoJUz59UUOmcGKtdATl
         6ohbnRp2XpKBUn5YjbM/3E1EhjaB0LYOrPllwKVj7Olv12mg/1eeJE2qCGgTFQGq42FD
         py+Mlu2m8zgzicQcXyUP7xUIdA8kgDsDfz4pxqsLYuwFre3OtmByiZUDfbCB9FEsLBH9
         zFFhk1JTSnvniVJraC5t6VVTG0apWJ//29qmLvATvIagsMUI5DIE9kOapMaUguagoymW
         0Q+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=MV/ypgx1wNT1wJckIGGlQXkOCHPXumMduk5FMMzFjcM=;
        b=f8OacBjUI3b4bZIwNY2MoxK02IwlK4fj5fd3hwd+qZjMYBhIAwrxS7BNQsk6hFeVaT
         LJYE8pE64FA5I1TX8gAdXGLfzYui1gN7FtX0wg1lwLzMfEA3ekWGA+UJIoiQ7O4GsdDU
         8/wMu4ErNWqr/WQZRT9JKHQveAbvgDQ0qwGIDM30EYvkxLmCe0X02+EJzsVEoWgFFv5g
         XWqo9AV1ZhYwSbEMqj7cc+hvMeCV+LOr8lFsMcUfmbqmd8Saa23gIeECkNWfqeK5YRNn
         A55ffe/nMW2DkCpErQtNxHVdF63jXVLKDTD/6OXoQ1B5z/IdvmZZUVrz0H1Rj4PfKCuT
         menA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G0mWkAJT;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com. [2a00:1450:4864:20::330])
        by gmr-mx.google.com with ESMTPS id 60si328928wra.3.2019.03.05.10.19.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 10:19:00 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) client-ip=2a00:1450:4864:20::330;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G0mWkAJT;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::330 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x330.google.com with SMTP id j125so3548883wmj.1
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 10:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MV/ypgx1wNT1wJckIGGlQXkOCHPXumMduk5FMMzFjcM=;
        b=G0mWkAJTPKTKy0IlKeTnu7PHKpO3J9Rbp3KUzNBEbraoQjp7HgCU294vBFHrlCxLuu
         gnbz4mS9HSmezExDQGyTXzoyNwxmXk4rK2DnmT7O8F8pK9pK4P31wKCbgOTU1zV5xNQ9
         vpgv3dqlM9eVXpSIUpw8rb//emOKNxDMwNT2RgjnpIdQg72qn6qiOAFXo86Wb7tfLaS9
         0ZINkoqj18UKTTUrQfJtJD3nizTnUx9XIY9l33UtdzSYjQTQnP5z8oQBi/AZVCSZH/mn
         Bns6Z/Z9v3K7yBRj5b6nziJbmr//EBsWScglnQ9HNGq4xzs8WD4c7Mgqf47ZvM/xoRql
         aiAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MV/ypgx1wNT1wJckIGGlQXkOCHPXumMduk5FMMzFjcM=;
        b=ct9kEjxShaFpbSsCnGBNtuZzGlP+hEoskqbKf7sPUa0g0tebiklo8hNWQO87PeBX88
         NXbF6zFRs52AfDj+XjSYLD/rRnYCDyIn4kFmdWY8PVaAGIjfNClv7rShxblacX/atcnB
         HmLk9UiiwpwEwURQtYo+WzhCBS5Tbte6Em7u1XNhFGqhYqvQD4wsXKnxR0WksBmEqEDK
         4tKLgzYRC5xgYGoqu60+sOhlKo9Nl8vKMQD1VeLNz1tPWFWzIASUTPvwC9UrCiXgsWLn
         wWwDqICUfLwbh7PbHk/RXSMC+AsBra6fislUpYsyaoD6A5R4XLjB/EEf4MkpQedY1RtZ
         CPzQ==
X-Gm-Message-State: APjAAAVelPK5h3XswmPufYmEUXiLMszFJpVNO0cb2Hgrct58KX84OEJI
	jLNuZDcqHwar98WS0uzNqEE=
X-Received: by 2002:a7b:c14a:: with SMTP id z10mr3307212wmi.99.1551809939787;
        Tue, 05 Mar 2019 10:18:59 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([93.122.165.106])
        by smtp.gmail.com with ESMTPSA id 12sm342316wme.25.2019.03.05.10.18.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 10:18:59 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v3 0/2] Fix various checkpatch warnings
Date: Tue,  5 Mar 2019 20:18:56 +0200
Message-Id: <1551809936-26809-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch series fixes the following:
-logical continuations warning
-avoid multiple line dereference

v2:
-make these a patch series

v3:
-correctly remake these in a patch series

Daniela Mormocea (2):
  Fix multiple line dereference
  Fix logical continuations warnings

 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 51 ++++++++--------------
 1 file changed, 19 insertions(+), 32 deletions(-)

-- 
2.7.4


