X-GM-THRID: 6534714567409270784
X-Received: by 10.107.134.98 with SMTP id i95mr6139362iod.122.1521481798731;
        Mon, 19 Mar 2018 10:49:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.165 with SMTP id v37ls2509840iov.7.gmail; Mon, 19 Mar
 2018 10:49:57 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvqhbt6ysYPc90iWCYyaJxRjgFfb6oypGCrpPT8nGXrnc6MVLgl+jC67w94pFMImOhDd3fw
X-Received: by 10.107.29.73 with SMTP id d70mr642279iod.63.1521481797658;
        Mon, 19 Mar 2018 10:49:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521481797; cv=none;
        d=google.com; s=arc-20160816;
        b=raL8L3wBaFLsCsbVRzJF/a8W6KhwByC8eXk0ZgPA4fIztKMhacYZ3ZKHwJZJHhsO1n
         pEcXBxKO7xqGA7dQNunYEZ+2BSA1cb42sjTOMUfEUCg/DDN0a0seSeHjx3XdDnDDB1/S
         q8lBIAnbpPGNtB1Y6ZvbXBARu3PeQsksdV4g+QfKVPHQ3t6pZdHeP888Sg4khu3oy1Df
         y8m/OLy5eo9LqJ0Uz4u1Awf2Q0jb11cgIBP+aQ8QkOcBm5wXTZPkAe2jxtmpy8hFSWD6
         3r0+bQN0HTL9UAGodAFYZfm2a9fveTr0Y0i45Cc/qBlVBc/24JMmuX8ndbwo3Cd+ZKpg
         9OGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=MeWg+X6YcXuUxns/y/hHtKkXYqpQh4GXDqv0jiN/9Q4=;
        b=HohcYtI+YWEXp1QadG5twtyOh1Eqk8rJ4xt7n9pBlrPvVfpa67fJ9Sd0e2JVcYK5Ti
         k72mzEv9ebTY+uSN4EczeZURlN//7hR1iZXFK7RM8KCQMpi+ahbJTBITGxDHk+bHw6AJ
         oo3Nzkt8e2a9687FWwCfeRBsSBuVj7zE/4PFMnphnqSt4Y+X/f/Sh24EHxTvhOueFDpp
         VvVt9xt2TCDCWZeT1IZdZll3XNtElbVqkJPDXvb4RK5ErbUStqsrYqSBFh9iAC8nMA0a
         86xMKnz0+/g9KE3rN2xqcmOTlBfrLYyuXoHwL26Ie4mAZLxuPn4WAUOcxc4fLiSLvsEK
         tFWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G6RW0oB8;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id t10-v6si74203itf.2.2018.03.19.10.49.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 10:49:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G6RW0oB8;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g12so7197053pgs.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 10:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MeWg+X6YcXuUxns/y/hHtKkXYqpQh4GXDqv0jiN/9Q4=;
        b=G6RW0oB8jUhX4Jds42EXY5VOXcnqN3YjlH38O4b+zYqJcBpMHgAaKwa2e/N8K+qJqC
         fMt46TRNJW5KoKFZqN9In1Y4v05FLtsoG/jivYW7DJj/F1y8jEgJi1uHtN9OkqIIoFrv
         i/gdrujxC8p2iMyyK0oE/I7PmGQlg3Yh396blv8k1inaiCb6DzLG1EDYMSkkHMXO0hYE
         OBGal/KqHOfSvYPD/oAw6tHUUYaZs+0g+G95oCWrOqitLsIsMKqgBuVXZpmTiFEf5g3E
         w9wJbfxsdO0/gxwI+qiLBwhLP9v5+CtipOQTuqJTJTUtCKzq+CRCvtTAC97s0JjAAbE6
         ylZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MeWg+X6YcXuUxns/y/hHtKkXYqpQh4GXDqv0jiN/9Q4=;
        b=Zer1Izl6BdGX2D/gxqo1CreiKYNEa44e1CReeSRDHDFqbEbJR7w4Bxz8eTuOgwn4Wa
         VmAjKWHhtZYZDI1vWjRJTFMPgvpIFbrBnpuQ1gjiIvil90BUBM6BrDnS0oIbspGKQp38
         O9DwbDsTST/aNIHH96HCvLZWpxEdSkVCl4G01aPODXty6F7PxFbTq6DDcimc14AWIKhR
         FdfCpAFPpjs/DPkeMLug6tH03dvZxt+UBgGwXTkYNDdx6WAubCv7acboF+70lvWcLqug
         KNUkizSNrJwIg8tPFU9AW52KcdVn337IjWxUDRAfigB+NPloEWzy104dqdixZq/8Fs3P
         /mxw==
X-Gm-Message-State: AElRT7FpyGNR2RvzMfSgQMnHQ4+MCfXaSJkkcDSVvzV/mgtaQhhm/Sze
	Wi2jOY14XTWfpr3Uxr6bAaOMGQ==
X-Received: by 10.99.110.198 with SMTP id j189mr6275942pgc.71.1521481796853;
        Mon, 19 Mar 2018 10:49:56 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id z67sm717869pgb.69.2018.03.19.10.49.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Mar 2018 10:49:55 -0700 (PDT)
Date: Mon, 19 Mar 2018 23:19:08 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: dwmw2@infradead.org
Cc: Brian Norris <computersforpeace@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Boris Brezillon <boris.brezillon@free-electrons.com>,
	Marek Vasut <marek.vasut@gmail.com>,
	Richard Weinberger <richard@nod.at>,
	Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>,
	linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] mtd: Replace printk() with more standardize output format
Message-ID: <20180319174908.GA29619@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

printk() is the raw way to print output and should be avoided.

For drivers with defined "struct device object", dev_*macro() is
prefer to standardize the output format within the subsystem.

If no "struct device object" is defined prefer pr_*macro() over
printk().

This patch Replace printk having a log level with the appropriate output
format according to the order of preference.

Change string explicitly mentioning function name to "%s...", __func__.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
*Change string explicitly mentioning function name to "%s...", __func__.
*merge quoted string split across lines.
*Cc'ed outreachy mailing list

 drivers/mtd/ftl.c | 108 ++++++++++++++++++++++++------------------------------
 1 file changed, 47 insertions(+), 61 deletions(-)

diff --git a/drivers/mtd/ftl.c b/drivers/mtd/ftl.c
index 664d206..a048429 100644
--- a/drivers/mtd/ftl.c
+++ b/drivers/mtd/ftl.c
@@ -177,18 +177,18 @@ static int scan_header(partition_t *part)
     }
 
     if (offset == max_offset) {
-	printk(KERN_NOTICE "ftl_cs: FTL header not found.\n");
+	pr_notice("ftl_cs: FTL header not found.\n");
 	return -ENOENT;
     }
     if (header.BlockSize != 9 ||
 	(header.EraseUnitSize < 10) || (header.EraseUnitSize > 31) ||
 	(header.NumTransferUnits >= le16_to_cpu(header.NumEraseUnits))) {
-	printk(KERN_NOTICE "ftl_cs: FTL header corrupt!\n");
+	pr_notice("ftl_cs: FTL header corrupt!\n");
 	return -1;
     }
     if ((1 << header.EraseUnitSize) != part->mbd.mtd->erasesize) {
-	printk(KERN_NOTICE "ftl: FTL EraseUnitSize %x != MTD erasesize %x\n",
-	       1 << header.EraseUnitSize,part->mbd.mtd->erasesize);
+	pr_notice("ftl: FTL EraseUnitSize %x != MTD erasesize %x\n",
+		  1 << header.EraseUnitSize, part->mbd.mtd->erasesize);
 	return -1;
     }
     part->header = header;
@@ -240,8 +240,7 @@ static int build_maps(partition_t *part)
 	    xvalid++;
 	} else {
 	    if (xtrans == part->header.NumTransferUnits) {
-		printk(KERN_NOTICE "ftl_cs: format error: too many "
-		       "transfer units!\n");
+		pr_notice("ftl_cs: format error: too many transfer units!\n");
 		goto out_XferInfo;
 	    }
 	    if (hdr_ok && (le16_to_cpu(header.LogicalEUN) == 0xffff)) {
@@ -261,8 +260,7 @@ static int build_maps(partition_t *part)
     header = part->header;
     if ((xtrans != header.NumTransferUnits) ||
 	(xvalid+xtrans != le16_to_cpu(header.NumEraseUnits))) {
-	printk(KERN_NOTICE "ftl_cs: format error: erase units "
-	       "don't add up!\n");
+	pr_notice("ftl_cs: format error: erase units don't add up!\n");
 	goto out_XferInfo;
     }
 
@@ -384,8 +382,7 @@ static void ftl_erase_callback(struct erase_info *erase)
 	if (part->XferInfo[i].Offset == erase->addr) break;
 
     if (i == part->header.NumTransferUnits) {
-	printk(KERN_NOTICE "ftl_cs: internal error: "
-	       "erase lookup failed!\n");
+	pr_notice("ftl_cs: internal error: erase lookup failed!\n");
 	return;
     }
 
@@ -394,8 +391,7 @@ static void ftl_erase_callback(struct erase_info *erase)
 	xfer->state = XFER_ERASED;
     else {
 	xfer->state = XFER_FAILED;
-	printk(KERN_NOTICE "ftl_cs: erase failed: state = %d\n",
-	       erase->state);
+	pr_notice("ftl_cs: erase failed: state = %d\n", erase->state);
     }
 
     kfree(erase);
@@ -492,7 +488,7 @@ static int copy_erase_unit(partition_t *part, uint16_t srcunit,
 	part->bam_index = 0xffff;
 
 	if (ret) {
-	    printk( KERN_WARNING "ftl: Failed to read BAM cache in copy_erase_unit()!\n");
+	    pr_warn("ftl: Failed to read BAM cache in %s()!\n", __func__);
 	    return ret;
 	}
     }
@@ -506,7 +502,7 @@ static int copy_erase_unit(partition_t *part, uint16_t srcunit,
                     (u_char *)&unit);
 
     if (ret) {
-	printk( KERN_WARNING "ftl: Failed to write back to BAM cache in copy_erase_unit()!\n");
+	pr_warn("ftl: Failed to write back to BAM cache in %s()!\n", __func__);
 	return ret;
     }
 
@@ -525,7 +521,7 @@ static int copy_erase_unit(partition_t *part, uint16_t srcunit,
 	    ret = mtd_read(part->mbd.mtd, src, SECTOR_SIZE, &retlen,
                            (u_char *)buf);
 	    if (ret) {
-		printk(KERN_WARNING "ftl: Error reading old xfer unit in copy_erase_unit\n");
+		pr_warn("ftl: Error reading old xfer unit in %s\n", __func__);
 		return ret;
             }
 
@@ -533,7 +529,7 @@ static int copy_erase_unit(partition_t *part, uint16_t srcunit,
 	    ret = mtd_write(part->mbd.mtd, dest, SECTOR_SIZE, &retlen,
                             (u_char *)buf);
 	    if (ret)  {
-		printk(KERN_WARNING "ftl: Error writing new xfer unit in copy_erase_unit\n");
+		pr_warn("ftl: Error writing new xfer unit in %s\n", __func__);
 		return ret;
             }
 
@@ -555,7 +551,7 @@ static int copy_erase_unit(partition_t *part, uint16_t srcunit,
                     &retlen,
                     (u_char *)part->bam_cache);
     if (ret) {
-	printk( KERN_WARNING "ftl: Error writing BAM in copy_erase_unit\n");
+	pr_warn("ftl: Error writing BAM in %s\n", __func__);
 	return ret;
     }
 
@@ -565,7 +561,7 @@ static int copy_erase_unit(partition_t *part, uint16_t srcunit,
                     &retlen, (u_char *)&srcunitswap);
 
     if (ret) {
-	printk(KERN_WARNING "ftl: Error writing new LogicalEUN in copy_erase_unit\n");
+	pr_warn("ftl: Error writing new LogicalEUN in %s\n", __func__);
 	return ret;
     }
 
@@ -643,17 +639,14 @@ static int reclaim_block(partition_t *part)
 	}
 	if (xfer == 0xffff) {
 	    if (queued) {
-		pr_debug("ftl_cs: waiting for transfer "
-		      "unit to be prepared...\n");
+		pr_debug("ftl_cs: waiting for transfer unit to be prepared...\n");
 		mtd_sync(part->mbd.mtd);
 	    } else {
 		static int ne = 0;
 		if (++ne < 5)
-		    printk(KERN_NOTICE "ftl_cs: reclaim failed: no "
-			   "suitable transfer units!\n");
+		    pr_notice("ftl_cs: reclaim failed: no suitable transfer units!\n");
 		else
-		    pr_debug("ftl_cs: reclaim failed: no "
-			  "suitable transfer units!\n");
+		    pr_debug("ftl_cs: reclaim failed: no suitable transfer units!\n");
 
 		return -EIO;
 	    }
@@ -679,11 +672,9 @@ static int reclaim_block(partition_t *part)
 	if (best == 0) {
 	    static int ne = 0;
 	    if (++ne < 5)
-		printk(KERN_NOTICE "ftl_cs: reclaim failed: "
-		       "no free blocks!\n");
+		pr_notice("ftl_cs: reclaim failed: no free blocks!\n");
 	    else
-		pr_debug("ftl_cs: reclaim failed: "
-		       "no free blocks!\n");
+		pr_debug("ftl_cs: reclaim failed: no free blocks!\n");
 
 	    return -EIO;
 	}
@@ -692,7 +683,7 @@ static int reclaim_block(partition_t *part)
     if (!ret)
 	erase_xfer(part, xfer);
     else
-	printk(KERN_NOTICE "ftl_cs: copy_erase_unit failed!\n");
+	pr_notice("ftl_cs: copy_erase_unit failed!\n");
     return ret;
 } /* reclaim_block */
 
@@ -710,10 +701,9 @@ static int reclaim_block(partition_t *part)
 static void dump_lists(partition_t *part)
 {
     int i;
-    printk(KERN_DEBUG "ftl_cs: Free total = %d\n", part->FreeTotal);
+    pr_dbg("ftl_cs: Free total = %d\n", part->FreeTotal);
     for (i = 0; i < part->DataUnits; i++)
-	printk(KERN_DEBUG "ftl_cs:   unit %d: %d phys, %d free, "
-	       "%d deleted\n", i,
+	pr_dbg("ftl_cs: unit %d: %d phys, %d free, %d deleted\n", i,
 	       part->EUNInfo[i].Offset >> part->header.EraseUnitSize,
 	       part->EUNInfo[i].Free, part->EUNInfo[i].Deleted);
 }
@@ -750,7 +740,7 @@ static uint32_t find_free(partition_t *part)
                        (u_char *)(part->bam_cache));
 
 	if (ret) {
-	    printk(KERN_WARNING"ftl: Error reading BAM in find_free\n");
+	    pr_warn("ftl: Error reading BAM in %s\n", __func__);
 	    return 0;
 	}
 	part->bam_index = eun;
@@ -765,7 +755,7 @@ static uint32_t find_free(partition_t *part)
 	if (++ne == 1)
 	    dump_lists(part);
 #endif
-	printk(KERN_NOTICE "ftl_cs: bad free list!\n");
+	pr_notice("ftl_cs: bad free list!\n");
 	return 0;
     }
     pr_debug("ftl_cs: found free block at %d in %d\n", blk, eun);
@@ -791,14 +781,14 @@ static int ftl_read(partition_t *part, caddr_t buffer,
     pr_debug("ftl_cs: ftl_read(0x%p, 0x%lx, %ld)\n",
 	  part, sector, nblocks);
     if (!(part->state & FTL_FORMATTED)) {
-	printk(KERN_NOTICE "ftl_cs: bad partition\n");
+	pr_notice("ftl_cs: bad partition\n");
 	return -EIO;
     }
     bsize = 1 << part->header.EraseUnitSize;
 
     for (i = 0; i < nblocks; i++) {
 	if (((sector+i) * SECTOR_SIZE) >= le32_to_cpu(part->header.FormattedSize)) {
-	    printk(KERN_NOTICE "ftl_cs: bad read offset\n");
+	    pr_notice("ftl_cs: bad read offset\n");
 	    return -EIO;
 	}
 	log_addr = part->VirtualBlockMap[sector+i];
@@ -811,7 +801,7 @@ static int ftl_read(partition_t *part, caddr_t buffer,
                            (u_char *)buffer);
 
 	    if (ret) {
-		printk(KERN_WARNING "Error reading MTD device in ftl_read()\n");
+		pr_warn("Error reading MTD device in %s()\n", __func__);
 		return ret;
 	    }
 	}
@@ -849,7 +839,7 @@ static int set_bam_entry(partition_t *part, uint32_t log_addr,
     ret = mtd_read(part->mbd.mtd, offset, sizeof(uint32_t), &retlen,
                    (u_char *)&old_addr);
     if (ret) {
-	printk(KERN_WARNING"ftl: Error reading old_addr in set_bam_entry: %d\n",ret);
+	pr_warn("ftl: Error reading old_addr in %s: %d\n", __func__, ret);
 	return ret;
     }
     old_addr = le32_to_cpu(old_addr);
@@ -859,9 +849,9 @@ static int set_bam_entry(partition_t *part, uint32_t log_addr,
 	(!BLOCK_DELETED(virt_addr) && (old_addr != 0xfffffffe))) {
 	static int ne = 0;
 	if (++ne < 5) {
-	    printk(KERN_NOTICE "ftl_cs: set_bam_entry() inconsistency!\n");
-	    printk(KERN_NOTICE "ftl_cs:   log_addr = 0x%x, old = 0x%x"
-		   ", new = 0x%x\n", log_addr, old_addr, virt_addr);
+	    pr_notice("ftl_cs: %s() inconsistency!\n", __func__);
+	    pr_notice("ftl_cs: log_addr = 0x%x, old = 0x%x, new = 0x%x\n",
+		      log_addr, old_addr, virt_addr);
 	}
 	return -EIO;
     }
@@ -872,11 +862,9 @@ static int set_bam_entry(partition_t *part, uint32_t log_addr,
 	if (le32_to_cpu(part->bam_cache[blk]) != old_addr) {
 	    static int ne = 0;
 	    if (++ne < 5) {
-		printk(KERN_NOTICE "ftl_cs: set_bam_entry() "
-		       "inconsistency!\n");
-		printk(KERN_NOTICE "ftl_cs:   log_addr = 0x%x, cache"
-		       " = 0x%x\n",
-		       le32_to_cpu(part->bam_cache[blk]), old_addr);
+		pr_notice("ftl_cs: %s() inconsistency!\n", __func__);
+		pr_notice("ftl_cs: log_addr = 0x%x, cache = 0x%x\n",
+			  le32_to_cpu(part->bam_cache[blk]), old_addr);
 	    }
 	    return -EIO;
 	}
@@ -887,9 +875,9 @@ static int set_bam_entry(partition_t *part, uint32_t log_addr,
                     (u_char *)&le_virt_addr);
 
     if (ret) {
-	printk(KERN_NOTICE "ftl_cs: set_bam_entry() failed!\n");
-	printk(KERN_NOTICE "ftl_cs:   log_addr = 0x%x, new = 0x%x\n",
-	       log_addr, virt_addr);
+	pr_notice("ftl_cs: %s() failed!\n", __func__);
+	pr_notice("ftl_cs: log_addr = 0x%x, new = 0x%x\n",
+		  log_addr, virt_addr);
     }
     return ret;
 } /* set_bam_entry */
@@ -905,7 +893,7 @@ static int ftl_write(partition_t *part, caddr_t buffer,
     pr_debug("ftl_cs: ftl_write(0x%p, %ld, %ld)\n",
 	  part, sector, nblocks);
     if (!(part->state & FTL_FORMATTED)) {
-	printk(KERN_NOTICE "ftl_cs: bad partition\n");
+	pr_notice("ftl_cs: bad partition\n");
 	return -EIO;
     }
     /* See if we need to reclaim space, before we start */
@@ -920,7 +908,7 @@ static int ftl_write(partition_t *part, caddr_t buffer,
     virt_addr = sector * SECTOR_SIZE | BLOCK_DATA;
     for (i = 0; i < nblocks; i++) {
 	if (virt_addr >= le32_to_cpu(part->header.FormattedSize)) {
-	    printk(KERN_NOTICE "ftl_cs: bad write offset\n");
+	    pr_notice("ftl_cs: bad write offset\n");
 	    return -EIO;
 	}
 
@@ -929,8 +917,7 @@ static int ftl_write(partition_t *part, caddr_t buffer,
 	if (blk == 0) {
 	    static int ne = 0;
 	    if (++ne < 5)
-		printk(KERN_NOTICE "ftl_cs: internal error: "
-		       "no free blocks!\n");
+		pr_notice("ftl_cs: internal error: no free blocks!\n");
 	    return -ENOSPC;
 	}
 
@@ -946,10 +933,9 @@ static int ftl_write(partition_t *part, caddr_t buffer,
 	ret = mtd_write(part->mbd.mtd, offset, SECTOR_SIZE, &retlen, buffer);
 
 	if (ret) {
-	    printk(KERN_NOTICE "ftl_cs: block write failed!\n");
-	    printk(KERN_NOTICE "ftl_cs:   log_addr = 0x%x, virt_addr"
-		   " = 0x%x, Offset = 0x%zx\n", log_addr, virt_addr,
-		   offset);
+	    pr_notice("ftl_cs: block write failed!\n");
+	    pr_notice("ftl_cs: log_addr = 0x%x, virt_addr = 0x%x,"
+		      " Offset = 0x%zx\n", log_addr, virt_addr, offset);
 	    return -EIO;
 	}
 
@@ -1045,8 +1031,8 @@ static void ftl_add_mtd(struct mtd_blktrans_ops *tr, struct mtd_info *mtd)
 	partition = kzalloc(sizeof(partition_t), GFP_KERNEL);
 
 	if (!partition) {
-		printk(KERN_WARNING "No memory to scan for FTL on %s\n",
-		       mtd->name);
+		dev_warn(&mtd->dev, "No memory to scan for FTL on %s\n",
+			 mtd->name);
 		return;
 	}
 
@@ -1057,8 +1043,8 @@ static void ftl_add_mtd(struct mtd_blktrans_ops *tr, struct mtd_info *mtd)
 
 		partition->state = FTL_FORMATTED;
 #ifdef PCMCIA_DEBUG
-		printk(KERN_INFO "ftl_cs: opening %d KiB FTL partition\n",
-		       le32_to_cpu(partition->header.FormattedSize) >> 10);
+		dev_info(&mtd->dev, "ftl_cs: opening %d KiB FTL partition\n",
+			 le32_to_cpu(partition->header.FormattedSize) >> 10);
 #endif
 		partition->mbd.size = le32_to_cpu(partition->header.FormattedSize) >> 9;
 
-- 
2.7.4


