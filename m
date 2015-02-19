X-GM-THRID: 986854719488
X-Received: by 10.112.45.197 with SMTP id p5mr874554lbm.18.1424380029915;
        Thu, 19 Feb 2015 13:07:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.25.201 with SMTP id e9ls174419lag.67.gmail; Thu, 19 Feb
 2015 13:07:09 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr494551lbb.11.1424380029432;
        Thu, 19 Feb 2015 13:07:09 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id r6si4591182wix.0.2015.02.19.13.07.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 13:07:09 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22f.google.com with SMTP id x12so9635465wgg.6
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 13:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=a7vyvIbFtfbQ3jwGxNnCDD7VpRWV70jxEqXdHhI5foo=;
        b=tsJZsf7wTnR/5LIGgt15qyDA9ccdADlGEqVZ5C2r5q0ttPh5+rk5jLgffLdQSBvIu+
         JZDxjdttZU86oihpuDvx++GsU2Rwgfmf9WaVcf+4A2kyenXiyFDIPTp4gG5gJESvuhA8
         sHXqhWcGECteKy8U77/p0BHqdnBBoz4wiofgMCb+lw/WrQof5XaQBGDbsI3vXsQhynda
         UE2l3xNjSn2lTN7xynKDriYFLep587bKgWYBZZgGIUuHuiwQnRbXMG3ukLNm1aqlHDvF
         PWO2+uK+1GcI9ooEOdhVSp9Q6jO6tAvQYbk7S4/DcgKrra1Go81zLkudmdM7MnQxAtnp
         S6tw==
X-Received: by 10.180.36.212 with SMTP id s20mr13881019wij.58.1424380029347;
        Thu, 19 Feb 2015 13:07:09 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id hn2sm39054027wjc.5.2015.02.19.13.07.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 13:07:08 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 1/2] Staging: lustre: lnet: Cleanup switch statement
Date: Thu, 19 Feb 2015 23:06:45 +0200
Message-Id: <1424380006-18213-1-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>

This patch fixes the following checkpatch error:
ERROR: switch and case should be at the same indent
859: FILE: drivers/staging/lustre/lnet/selftest/conctl.c:859:
---
 drivers/staging/lustre/lnet/selftest/conctl.c | 112 +++++++++++++-------------
 1 file changed, 56 insertions(+), 56 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conctl.c b/drivers/staging/lustre/lnet/selftest/conctl.c
index fbff84c..f945aff 100644
--- a/drivers/staging/lustre/lnet/selftest/conctl.c
+++ b/drivers/staging/lustre/lnet/selftest/conctl.c
@@ -857,62 +857,62 @@ lstcon_ioctl_entry(unsigned int cmd, struct libcfs_ioctl_data *data)
 	memset(&console_session.ses_trans_stat, 0, sizeof(lstcon_trans_stat_t));
 
 	switch (opc) {
-		case LSTIO_SESSION_NEW:
-			rc = lst_session_new_ioctl((lstio_session_new_args_t *)buf);
-			break;
-		case LSTIO_SESSION_END:
-			rc = lst_session_end_ioctl((lstio_session_end_args_t *)buf);
-			break;
-		case LSTIO_SESSION_INFO:
-			rc = lst_session_info_ioctl((lstio_session_info_args_t *)buf);
-			break;
-		case LSTIO_DEBUG:
-			rc = lst_debug_ioctl((lstio_debug_args_t *)buf);
-			break;
-		case LSTIO_GROUP_ADD:
-			rc = lst_group_add_ioctl((lstio_group_add_args_t *)buf);
-			break;
-		case LSTIO_GROUP_DEL:
-			rc = lst_group_del_ioctl((lstio_group_del_args_t *)buf);
-			break;
-		case LSTIO_GROUP_UPDATE:
-			rc = lst_group_update_ioctl((lstio_group_update_args_t *)buf);
-			break;
-		case LSTIO_NODES_ADD:
-			rc = lst_nodes_add_ioctl((lstio_group_nodes_args_t *)buf);
-			break;
-		case LSTIO_GROUP_LIST:
-			rc = lst_group_list_ioctl((lstio_group_list_args_t *)buf);
-			break;
-		case LSTIO_GROUP_INFO:
-			rc = lst_group_info_ioctl((lstio_group_info_args_t *)buf);
-			break;
-		case LSTIO_BATCH_ADD:
-			rc = lst_batch_add_ioctl((lstio_batch_add_args_t *)buf);
-			break;
-		case LSTIO_BATCH_START:
-			rc = lst_batch_run_ioctl((lstio_batch_run_args_t *)buf);
-			break;
-		case LSTIO_BATCH_STOP:
-			rc = lst_batch_stop_ioctl((lstio_batch_stop_args_t *)buf);
-			break;
-		case LSTIO_BATCH_QUERY:
-			rc = lst_batch_query_ioctl((lstio_batch_query_args_t *)buf);
-			break;
-		case LSTIO_BATCH_LIST:
-			rc = lst_batch_list_ioctl((lstio_batch_list_args_t *)buf);
-			break;
-		case LSTIO_BATCH_INFO:
-			rc = lst_batch_info_ioctl((lstio_batch_info_args_t *)buf);
-			break;
-		case LSTIO_TEST_ADD:
-			rc = lst_test_add_ioctl((lstio_test_args_t *)buf);
-			break;
-		case LSTIO_STAT_QUERY:
-			rc = lst_stat_query_ioctl((lstio_stat_args_t *)buf);
-			break;
-		default:
-			rc = -EINVAL;
+	case LSTIO_SESSION_NEW:
+		rc = lst_session_new_ioctl((lstio_session_new_args_t *)buf);
+		break;
+	case LSTIO_SESSION_END:
+		rc = lst_session_end_ioctl((lstio_session_end_args_t *)buf);
+		break;
+	case LSTIO_SESSION_INFO:
+		rc = lst_session_info_ioctl((lstio_session_info_args_t *)buf);
+		break;
+	case LSTIO_DEBUG:
+		rc = lst_debug_ioctl((lstio_debug_args_t *)buf);
+		break;
+	case LSTIO_GROUP_ADD:
+		rc = lst_group_add_ioctl((lstio_group_add_args_t *)buf);
+		break;
+	case LSTIO_GROUP_DEL:
+		rc = lst_group_del_ioctl((lstio_group_del_args_t *)buf);
+		break;
+	case LSTIO_GROUP_UPDATE:
+		rc = lst_group_update_ioctl((lstio_group_update_args_t *)buf);
+		break;
+	case LSTIO_NODES_ADD:
+		rc = lst_nodes_add_ioctl((lstio_group_nodes_args_t *)buf);
+		break;
+	case LSTIO_GROUP_LIST:
+		rc = lst_group_list_ioctl((lstio_group_list_args_t *)buf);
+		break;
+	case LSTIO_GROUP_INFO:
+		rc = lst_group_info_ioctl((lstio_group_info_args_t *)buf);
+		break;
+	case LSTIO_BATCH_ADD:
+		rc = lst_batch_add_ioctl((lstio_batch_add_args_t *)buf);
+		break;
+	case LSTIO_BATCH_START:
+		rc = lst_batch_run_ioctl((lstio_batch_run_args_t *)buf);
+		break;
+	case LSTIO_BATCH_STOP:
+		rc = lst_batch_stop_ioctl((lstio_batch_stop_args_t *)buf);
+		break;
+	case LSTIO_BATCH_QUERY:
+		rc = lst_batch_query_ioctl((lstio_batch_query_args_t *)buf);
+		break;
+	case LSTIO_BATCH_LIST:
+		rc = lst_batch_list_ioctl((lstio_batch_list_args_t *)buf);
+		break;
+	case LSTIO_BATCH_INFO:
+		rc = lst_batch_info_ioctl((lstio_batch_info_args_t *)buf);
+		break;
+	case LSTIO_TEST_ADD:
+		rc = lst_test_add_ioctl((lstio_test_args_t *)buf);
+		break;
+	case LSTIO_STAT_QUERY:
+		rc = lst_stat_query_ioctl((lstio_stat_args_t *)buf);
+		break;
+	default:
+		rc = -EINVAL;
 	}
 
 	if (copy_to_user(data->ioc_pbuf2, &console_session.ses_trans_stat,
-- 
1.9.1


