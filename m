Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F6C33DE
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 11:41:28 +0000 (UTC)
Received: by mail-pl1-f173.google.com with SMTP id i3so17374585plg.6
        for <outreachy@lists.linux.dev>; Wed, 08 Mar 2023 03:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678275687;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ho+opMvVRse5Zsq5arb39ucRebDfPe9zHVtO0aml4YQ=;
        b=GOtLxgrBvLTyk199vCFJ8yhAid/47d/JK9YeiC3/S7ShyiCg2frmGl4R6chyMp1CTf
         KCqvoHRpeiVHghKJfEB/1rgcV8F1hu3MguhvbykglcVZloCx23KBj97MvnByk/ebE+lC
         Qs9hRBDBSHv7slLH++kHAptOcECJB9bHnIC/EAHIohxW3moVMavEOAAXQdibgHllj8yd
         fKMYdp8KjFu6blVnzX28PdGv2cuZZPy+VE21Sxfqiv6khUtKzOXkR0bVBNT1aWiKltHT
         5MZxoDW/l8RzHcqw/hlCxYA9zCw4IuCsDda0CaMG9VPF/7Ajg5QF2n08z6xg4FaQuBa4
         Jgmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678275687;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ho+opMvVRse5Zsq5arb39ucRebDfPe9zHVtO0aml4YQ=;
        b=qdN8tvcM/EaYqqJPvvJkDu5MWMTLgLHBH395ZQJmAMDq1Ewnimvpgp/qXertOut9n5
         XYkpcSRoEXBgmRPI6IEIQFlRbWmMnndBgN1+z6ZYNkOpGi77gAeMAn/URalHCoBKKrje
         cMzSZdkFfNh3lz4BSbJBKV2VE31XIW5DfwiaJtAgwcU+7APEqfgd71x2vz+7cDISOr54
         o+NnY+IURLKJmIzYh7gb17n5QJxDoDq3m+9N2sLZu6xLTD48q9o5fEgAgV7MRgAHKn7n
         nK1hzBqtQs4G+7Hovm0WbP8TziN9qL0Hyf78vIHZ+SJonWuF7qQmlNwBWY9jqw6637RD
         oQDg==
X-Gm-Message-State: AO0yUKWmaUqwRShMmM/K/5P7nU+cTmRKWXtzQ8IU2EMkEE+9zl/Zq+QL
	3WA4XzS70bbkEbkeD8P5sEfx61vLnUE=
X-Google-Smtp-Source: AK7set/wnZH8ZErapB9kJRUgPmhzxy25FJioy2KKXE2cBlkkj9jQg7IeiUDVWAek61ASsnfh21XOLg==
X-Received: by 2002:a17:902:9f8e:b0:19d:7c2:3a47 with SMTP id g14-20020a1709029f8e00b0019d07c23a47mr16681804plq.67.1678275687096;
        Wed, 08 Mar 2023 03:41:27 -0800 (PST)
Received: from ubuntu ([59.95.155.108])
        by smtp.gmail.com with ESMTPSA id ka3-20020a170903334300b0019e21d2ed2esm9791303plb.88.2023.03.08.03.41.25
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 03:41:26 -0800 (PST)
Date: Wed, 8 Mar 2023 03:41:22 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: outreachy@lists.linux.dev
Subject: Introductory message
Message-ID: <20230308114122.GA312977@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi I am Sumitra Sharma, an outreachy applicant. This is my first time
applying to outreachy and linux-kernel. I am currently working on
setting up the enviornment. I observed that building the kernel i.e.
running "make -j2" command itself is taking a lot of time. I would
appreciate some suggestions on it.
Also I recieved an error stating "make[2]: *** No rule to make target
'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.
Stop." to which I edited the .config file as below
#
# Certificates for signature checking
#
CONFIG_MODULE_SIG_KEY="certs/signing_key.pem"
CONFIG_MODULE_SIG_KEY_TYPE_RSA=y
# CONFIG_MODULE_SIG_KEY_TYPE_ECDSA is not set
CONFIG_SYSTEM_TRUSTED_KEYRING=y
CONFIG_SYSTEM_TRUSTED_KEYS=""
CONFIG_SYSTEM_EXTRA_CERTIFICATE=y
CONFIG_SYSTEM_EXTRA_CERTIFICATE_SIZE=4096
CONFIG_SECONDARY_TRUSTED_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_KEYRING=y
CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
CONFIG_SYSTEM_REVOCATION_LIST=y
CONFIG_SYSTEM_REVOCATION_KEYS=""
# CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE is not set
# end of Certificates for signature checking
