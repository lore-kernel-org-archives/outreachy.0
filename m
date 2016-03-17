X-GM-THRID: 6262288829369024512
X-Received: by 10.107.184.67 with SMTP id i64mr7357323iof.24.1458227065385;
        Thu, 17 Mar 2016 08:04:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.98 with SMTP id k89ls1739113qgk.69.gmail; Thu, 17 Mar
 2016 08:04:24 -0700 (PDT)
X-Received: by 10.140.217.17 with SMTP id n17mr7387671qhb.30.1458227064402;
        Thu, 17 Mar 2016 08:04:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h69si1338910pfj.0.2016.03.17.08.04.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 08:04:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q129so11715311pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 08:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=xaO1pOlaoA18qC8TmogbGMb6g/oJOMA1JcE1eM2SiRA=;
        b=SYZ0MhNvhn3S2+iWRD4K7JDTPojMXfvYDrMIuaKuDUyPslIy7r8lMNNZg1t4jgN+dh
         NkhTDnIWmPI8LNL/WBR2uHJJtScveyAHNMdeUGJBmALWvrz75v3awYUW+LBAqK7nORl9
         Ht1ZmIDNb6zI268jxEacUYI1XRh1Lfq5es3dw5c309AKxFyfRxLfxjn4DauVnYUisOOB
         M9PqGXB4Zw2xriyM5c7NRUp2PRLYg7JngcUWso1dIhQMDQC6m8qNIA3ooNrHXcQ27Uu0
         Dlgr8ek2ymy8IjYM/C7f97nhyEGmtelVXiSd8Pl9fWxWSDnApwSEqgnNw0duEr7RnNPf
         FEYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=xaO1pOlaoA18qC8TmogbGMb6g/oJOMA1JcE1eM2SiRA=;
        b=cGIO4E1Ruzg+0dDl4lQzDBK0Jf2L8BOGI0kM1FTrsn215CBP6r60sNoSZuPHsWk9I/
         5EElQcQLtJTmri3TfQ/Vf+RhLqjZ/bvQVdDG69dDH1/PvxUOLmyZupZQ5eNecGPp2sdO
         C4LvUHmqVImNsRAPHTEDhHCQTJXZHxc5yMf3pUmWt1S2msXoNTFYqk6Vh2/JS8u5rCES
         mHZ8Cl3WmG63825ofUbVwJIba1F9dktXx6touQZEdH6U1FNtn7ZGCvKXh/LLHmFSUvji
         YLbnqElBN89DUhKYIms7J4X+ZQbQGWGdehIhOaB/hAbMpV+sJ8Jbl1NWOJgnWnjQUP3G
         bhUw==
X-Gm-Message-State: AD7BkJJ+slHrFVFRYZx5jTgysipfaJGZx8JhMQj0J+BL+KMgm2XhaYeomTM5sGUFVup9Dg==
X-Received: by 10.66.62.131 with SMTP id y3mr11846836par.58.1458227064185;
        Thu, 17 Mar 2016 08:04:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.162.14])
        by smtp.gmail.com with ESMTPSA id f65sm14109203pfd.47.2016.03.17.08.04.22
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 08:04:23 -0700 (PDT)
Date: Thu, 17 Mar 2016 20:34:17 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: tj@kernel.org
Subject: [PATCH v2] qlge: Replace create_singlethread_workqueue with
 alloc_ordered_workqueue
Message-ID: <20160317150417.GA8085@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace deprecated create_singlethread_workqueue with
alloc_ordered_workqueue.

Work items include getting tx/rx frame sizes, resetting MPI processor,
setting asic recovery bit so ordering seems necessary as only one work
item should be in queue/executing at any given time, hence the use of
alloc_ordered_workqueue.

WQ_MEM_RECLAIM flag has not been set since this driver doesn't seem to
sit in memory reclaim path.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Removed WQ_MEM_RECLAIM flag

Not sure if the assumption of requiring ordering of work items 
is correct.

 drivers/net/ethernet/qlogic/qlge/qlge_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/qlogic/qlge/qlge_main.c b/drivers/net/ethernet/qlogic/qlge/qlge_main.c
index 9979764..3dc268e 100644
--- a/drivers/net/ethernet/qlogic/qlge/qlge_main.c
+++ b/drivers/net/ethernet/qlogic/qlge/qlge_main.c
@@ -4676,7 +4676,7 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
 	/*
 	 * Set up the operating parameters.
 	 */
-	qdev->workqueue = create_singlethread_workqueue(ndev->name);
+	qdev->workqueue = alloc_ordered_workqueue(ndev->name, 0);
 	INIT_DELAYED_WORK(&qdev->asic_reset_work, ql_asic_reset_work);
 	INIT_DELAYED_WORK(&qdev->mpi_reset_work, ql_mpi_reset_work);
 	INIT_DELAYED_WORK(&qdev->mpi_work, ql_mpi_work);
-- 
1.9.1


