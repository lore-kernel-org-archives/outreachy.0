Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEAA579CE
	for <outreachy@lists.linux.dev>; Mon, 27 Mar 2023 21:47:22 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id v1so10238367wrv.1
        for <outreachy@lists.linux.dev>; Mon, 27 Mar 2023 14:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679953641;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9bUfrvzKb/m/6bQ32UQ5w4f5f/RyILJQwjZAH9mQs7I=;
        b=fabwhxWKgGXlXbgyKKWXkJCjw0tFGD8fm6VJemL9WdPEmVxmENfNoBaJnzTGWyz/fi
         5IwuOsUXV3a8U/cxV3/NTcVHN3tJ4QQcg4yD+bc0Om1cQjHlTzSj29zA+ZIIhzRt0o15
         KB7ukYSXS3XMNH70SODpRgmgNxcSXIXo10Uc6O1O2AZ5xFpk8QuKa3Rmq9rOqPnadtf4
         2yCMw7ZscDRowErQ+D4MGcMYRnHhEl16Gp05HVtDxNglmZT0cyk3R4vimdp7Iva0I5iW
         iOZdwfCMe70f97y8Z99NHSunhmpWSlRmRgFwly9lLefhnM7NjeUB5bhSJQ5fQLu3IliT
         I11w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679953641;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9bUfrvzKb/m/6bQ32UQ5w4f5f/RyILJQwjZAH9mQs7I=;
        b=vucF+sO4c0cZ1Ha6LyTcOO8bjpQWgdQMrSq/vVXD2MF94mZBzCPmgBqBXEiGmyft6B
         SgNVVSMhNMvwOz4XkA1PaHvFGzdCuDBUZHm01Ev7m+WMKU5AJF/DlZv1Ds8votjkquPZ
         2UkCIqlVpCsnmSYM6Zu2Mc20QkJDdTAFxyO+f1IRZuoGD0cAbwMQP6+NIYr3VHuwqtzI
         W6UsrkBO7+WjUhpjsHW6KzDrnQ6+mhuULqx2/Te4rT2mE/3M1IvpEkriCtALEvPGVdac
         FeMvf32AsoiDe9ep/R611A1T2lSbsvsgRNeCy8E/YgrxbJCzMrweZ3ZgYK3Tackx7rGO
         FapA==
X-Gm-Message-State: AAQBX9cmQWBxBMrs8HIRVc3aXE7ghBHR1rGHJh4m5srEAXPNB2FljaqJ
	/0iLpXPOmdEedlJVabs66n34rmX+XUflilOk
X-Google-Smtp-Source: AKy350ZWZRJbVT6qcwwsj1Xd30c0nV6UI+IBldOH6oYWH7z2nLwaoreuzte5VNtAizhiQ+NpQWZaPQ==
X-Received: by 2002:adf:fc8c:0:b0:2c8:9cfe:9e29 with SMTP id g12-20020adffc8c000000b002c89cfe9e29mr10138376wrr.38.1679953640651;
        Mon, 27 Mar 2023 14:47:20 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.14.14])
        by smtp.gmail.com with ESMTPSA id w2-20020a5d6082000000b002c6d0462163sm25880183wrt.100.2023.03.27.14.47.19
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 14:47:20 -0700 (PDT)
Date: Tue, 28 Mar 2023 02:47:18 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: outreachy@lists.linux.dev
Subject: Suggestions on CHECK avoiding camel case
Message-ID: <ZCIO5nBdYVEwdTpB@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Dear Outreachy Mentors,

I am working on the folowing check reported by checkpatch.pl:

CHECK: Avoid CamelCase: <dot11RSNAStatsCCMPFormatErrors>
#37: FILE: drivers/staging/rtl8192e/rtllib_crypt_ccmp.c:37:
+       u32 dot11RSNAStatsCCMPFormatErrors;

CHECK: Avoid CamelCase: <dot11RSNAStatsCCMPReplays>
#38: FILE: drivers/staging/rtl8192e/rtllib_crypt_ccmp.c:38:
+       u32 dot11RSNAStatsCCMPReplays;

Such issues are reported by checkpatch in other files in
drivers/staging/ modules as well.

Should I change the varible names here or should I leave it as is?

Kindly guide me with this.

Thank you for your time.

Regards,
Khadija

