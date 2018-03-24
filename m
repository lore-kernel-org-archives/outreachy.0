X-GM-THRID: 6536503854152810496
X-Received: by 10.13.248.1 with SMTP id i1mr12767642ywf.30.1521898399592;
        Sat, 24 Mar 2018 06:33:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.71.85 with SMTP id u82ls443564ywa.0.gmail; Sat, 24 Mar
 2018 06:33:18 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvqZKPuDXMJdakw9ORS7Dt8cUnQebswzfQaPZtfOb+H6R6Z2Zm2ITEToOtFZ3SvGIhWsQg9
X-Received: by 10.129.79.68 with SMTP id d65mr13652657ywb.55.1521898398962;
        Sat, 24 Mar 2018 06:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521898398; cv=none;
        d=google.com; s=arc-20160816;
        b=Z1dV1RBkQbMplQazKWXZFHaWIkoKDZjyiJGO4/Ql7qois3WZEWZpgA1+fcnFcL2Rpu
         kbAuCL0V8AnaXTqVBbVfijqK16WUT8R5abi1eto2xPdYQLhZ9tv6BGrAZ43eSvLJgd5L
         PBwxcO6BtTCv8y1bR9rRdLVUGhYtKiOEftfBFSczf6HnIAN9sWCn5XhB5a+nch3gM7X7
         Y5o6WZyP7skidLxZkU6ycc2jqmb95QHWPdEgM8hgY+I1d1CL3ZkT/pJSSQS8cZVUGzXd
         eNtN7vaB9HDZHvhOASt/sapvvbv/HLlrKCiml7YttqicFXmaqiiWAbGZStWyu/x+nl2T
         vxLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=JO1dsHQn9FOcqcKPda84TnmOV+UoK+CnOo2LeU2v5Y0=;
        b=nf0cXr0X7Z+ovXYxiIeDVAhooNwDGkOY4Z0ProPO68DSb8NRwb5vfcRA5FX1cFvR5V
         1wMzOtyQ+wcWwBnFMK5sgXjWywNIqhvTVAg6L7sKk2AZWKOpMht1v90cPc26b7D2bPEh
         /0c6NcfqXtEzEtKmWNzY/JanxMcGiTSFmsWBxBqq50IYN+lXIKyrfJVDSx6HgeFCKV/3
         xLJ+deI//TFC5c9fQDt1RYAukDElhgwnJHSmWOypKUOOgQ1UG79CmLOuW7ZT6tgfMI11
         ckOnr54aq0jIB8Ph3H7evmM4KDr6N40cNbm2CxmRzDIoCxyx31+ii5AOXjovP1qB8GD6
         rWaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=brU87mKh;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22e.google.com (mail-pl0-x22e.google.com. [2607:f8b0:400e:c01::22e])
        by gmr-mx.google.com with ESMTPS id f8si635909ywh.1.2018.03.24.06.33.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 06:33:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) client-ip=2607:f8b0:400e:c01::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=brU87mKh;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22e.google.com with SMTP id 91-v6so1322847pld.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 06:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=JO1dsHQn9FOcqcKPda84TnmOV+UoK+CnOo2LeU2v5Y0=;
        b=brU87mKhhPTh1ulPCn1VUiyz2njjEYiiyj2iZNhwgh6aMn//p9akWYdwluqLbkO1ib
         xsTO5nhmwu2MrjDWrL4fLxZcq8D2npFI08X4Q97enl011wLAFK4yMdglwLD6PYx6sZBg
         Z9EFS/iWwUPnDJUvBsyQAUIGvePYeYQRuH1D0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JO1dsHQn9FOcqcKPda84TnmOV+UoK+CnOo2LeU2v5Y0=;
        b=X8+1agLNFw3EdeaFsOXx7yBACt2nwyAkKu52gwRrteSvP8kS24uFXDLZTHZDyTytm5
         m8p68iuLKY6i2oMvUFHlCVTuqoZ9AxFttZjg+MHL+P047Cw+L3STOoQioEChdOAqdJ1e
         C3Ks5c/MnoBbvwz6SCanM2kL2rBzZOeY4GJDJuNU0wR8vtqWvtr/Chf3+xnqbih4eqVo
         vh0XdyBKZdy6TeFdm5Ynat4Uk4vI9yv26JCjd58sl/nifti9yQlGbaHjgKgJtosTlpBu
         PVSHn+AE/gOIcOSFToQjxorrUOQK7NSm03nBpn1pVm+LLzCbUSXbmqFNtO7viJz2zvCx
         h05w==
X-Gm-Message-State: AElRT7EXiAyvy9ia5w2gofvQuV9b9mS1ZfioFISyIS5j7lk+lUW2O5fu
	8Zy1F+rGXpLoFNYOEOTsvSfXWDdc
X-Received: by 2002:a17:902:b40c:: with SMTP id x12-v6mr33448325plr.94.1521898398305;
        Sat, 24 Mar 2018 06:33:18 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id k7sm19514702pgt.41.2018.03.24.06.33.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 06:33:17 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: media: Remove address of Free Software Foundation
Date: Sat, 24 Mar 2018 13:33:06 +0000
Message-Id: <1521898386-29094-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Remove address of Free Software Foundation in case it changes. Issue
found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
index 7cc115c..9ca17a2 100644
--- a/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
+++ b/drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
@@ -12,7 +12,7 @@
  *
  * You should have received a copy of the GNU General Public License
  * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
+ * Foundation, Inc.
  *
  * Contributors:
  *      Manjunath Hadli <manjunath.hadli@ti.com>
-- 
2.7.4


