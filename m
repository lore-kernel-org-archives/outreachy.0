X-GM-THRID: 6666118349921976320
X-Received: by 2002:a17:906:584c:: with SMTP id h12mr262743ejs.2.1552076627092;
        Fri, 08 Mar 2019 12:23:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ae9d:: with SMTP id e29ls2620597edd.4.gmail; Fri, 08 Mar
 2019 12:23:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqyaMSbfTRBALW4dTjxkArIGJ3qsNTmJb+pBSnKgJQ3FLk3Im4rBgayuwAOzyvGnS7byPEmD
X-Received: by 2002:a50:b361:: with SMTP id r30mr5879458edd.8.1552076626308;
        Fri, 08 Mar 2019 12:23:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552076626; cv=none;
        d=google.com; s=arc-20160816;
        b=Wi7oqQe8lche62lLCZVHSolPTJycyuMqx3zjwMsn1G29CRUE9uPDadq8LGFN367ZZ3
         +kYDyf2ftZs0/v4MpokWMD5VX8ewCFHF2cQRe+7xKxSsikZ/dK9t+E9lBfeiNyxsxbBv
         uA23suwe0BNuoVSY4u+KxEQ9tuqysbaWkqSaZZNUsUhcqVpTGx2u3DENrOgvyCO7EL4I
         jC8vuuiVTJgcdBGk2ecRJNCcuYc6ca5UO1+TMga2oEqTFih/pfGkIC/VR0ns59XdkseR
         NXB2pnASe+rkNgKd/dbyClPmbYZ/FpJAca2ou1fWpXjkkrJH7G5JotHga/2Fg+9H6a/M
         QMIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GwiVdV0+uFyS49fFdBrFDrHCpQFje0MhYBEyIfL+NCU=;
        b=RoJzVGswfJCXXFeIk2brye/LgE92VYRv1QFqUg4FfI2ks17AIGaXx46LWtTrrQwDqi
         N4t6C7/+GblKzxwW4XX3kW8teO2k2aCkA6QFLAzRD3z1DnxDfX2A2x08lZv7GvE9Ti0d
         cO6ut5dx5aQkE8mImTYe+NTMHCsaUXnqG2H1jll9gK+VZtsfmaRIf2qKhu3e+UW0sYCU
         X57PTYxTElWxChXf0uPytfeKHgkUxGlXFk9KE//co0q/m00nWk+otGuGDcK5zWLsm5TD
         Rr0SufVSpgKLmJwRQ0ni1O8uvtB7GikQPgm/WmBXrbvvsTw1MPnVMro0iES6w2Yg4z90
         0ctQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WSDBSP41;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com. [2a00:1450:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id r37si455459edd.2.2019.03.08.12.23.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 12:23:46 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) client-ip=2a00:1450:4864:20::32a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WSDBSP41;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32a.google.com with SMTP id f65so13662509wma.2
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Mar 2019 12:23:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GwiVdV0+uFyS49fFdBrFDrHCpQFje0MhYBEyIfL+NCU=;
        b=WSDBSP41NpRquVodMtJepbNTyXRbV/+4aPxd6qi+9izekeswHC1VtZgjCSWhTva5hX
         6WgzbLWvf3tTq7W3zHjY1Zs/cbvLMsrdAQKIScD+AJsGHDMuG3PlzB/whZgh2D/D0KD+
         bxnixZAh5EKSHWplL55xD91p369sQ4ndCIGESmqLy23ohRWuTmRQQMh4W6wbTepGHyDM
         Ltsi1shKQgSZWajNv78zSHx9H0OjkMJVm+wzQFVD9EQjZCfKk0jmhRUwp9Py1aKKpw+1
         E4LXLplrj6bVejqHeXuITv6gDWMg242cE6e7Y+1jLXZ1IlhDZWQ4Rpg6I+BTCE/0pSO4
         k91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GwiVdV0+uFyS49fFdBrFDrHCpQFje0MhYBEyIfL+NCU=;
        b=SmSrSQEPetFIGaenKnPtKnZ1xuaFfiqyoU5JhCYa3bMJ7t6T7oNCd+qN++kUi7K/TX
         XZETrOa1xgpAXyWyI6xmav6Dx71mTRnIByogbv478Eyb6dJ5kG3uK9ftJmPq9bk0iJhG
         B5WCL39Uyrfx1y3+IBa4TrkxAYRpj/RzP4QVhxQ9P0HIh2mFuIM478/1nl27tEK2E+sI
         29m/Nqmq5YVn5FoWaaAPizIOZuWuPGn666myEvmERIjppgjWZOFUxTGkBABtXx0Hs+Wk
         KsMXKsXhZfKl/eMDvlBsUmqHklZ4gqbn0TU96q5LrUoT4Crxo71EG6AmmGH82/Zm5rSE
         I6iw==
X-Gm-Message-State: APjAAAVxp2lEgPDKHw4b/oYNSwgxNQMqOGQKTA19qS/rBLFEI5zGDOKf
	towanAvG2F38Chs/ehrOoSLQt/M=
X-Received: by 2002:a1c:44:: with SMTP id 65mr9635990wma.127.1552076625816;
        Fri, 08 Mar 2019 12:23:45 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain ([176.12.107.132])
        by smtp.gmail.com with ESMTPSA id d24sm21381733wrb.47.2019.03.08.12.23.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 08 Mar 2019 12:23:45 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: aacraid: remove boilerplate license text
Date: Fri,  8 Mar 2019 20:23:28 +0000
Message-Id: <20190308202328.14042-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190308202328.14042-1-jbi.octave@gmail.com>
References: <20190308202328.14042-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove boilerplate license text.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/scsi/aacraid/aachba.c | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/drivers/scsi/aacraid/aachba.c b/drivers/scsi/aacraid/aachba.c
index 955ddb32aa40..e70b45a74d0a 100644
--- a/drivers/scsi/aacraid/aachba.c
+++ b/drivers/scsi/aacraid/aachba.c
@@ -1,33 +1,10 @@
 // SPDX-License-Identifier: GPL-2.0+
 /*
- *	Adaptec AAC series RAID controller driver
- *	(c) Copyright 2001 Red Hat Inc.
- *
- * based on the old aacraid driver that is..
- * Adaptec aacraid device driver for Linux.
  *
  * Copyright (c) 2000-2010 Adaptec, Inc.
  *               2010-2015 PMC-Sierra, Inc. (aacraid@pmc-sierra.com)
  *		 2016-2017 Microsemi Corp. (aacraid@microsemi.com)
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2, or (at your option)
- * any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; see the file COPYING.  If not, write to
- * the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
- *
- * Module Name:
- *  aachba.c
- *
- * Abstract: Contains Interfaces to manage IOs.
  *
  */
 
-- 
2.20.1


