X-GM-THRID: 6254556229521113088
X-Received: by 10.66.142.230 with SMTP id rz6mr628095pab.31.1457462162081;
        Tue, 08 Mar 2016 10:36:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.227 with SMTP id e90ls575627qga.74.gmail; Tue, 08 Mar
 2016 10:36:01 -0800 (PST)
X-Received: by 10.129.88.136 with SMTP id m130mr687412ywb.9.1457462161256;
        Tue, 08 Mar 2016 10:36:01 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-oi0-x231.google.com (mail-oi0-x231.google.com. [2607:f8b0:4003:c06::231])
        by gmr-mx.google.com with ESMTPS id p10si1655877igg.1.2016.03.08.10.36.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:36:01 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2607:f8b0:4003:c06::231 as permitted sender) client-ip=2607:f8b0:4003:c06::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2607:f8b0:4003:c06::231 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x231.google.com with SMTP id r187so16975990oih.3
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:36:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=AOh4SoXVDrB9F094BLaQAydpjfOEuBRHl1w7lLjNPyI=;
        b=T6Me5PcVQNHCda6cagXoduR8VGA4ZFysDvpirDLN2SIKmfnBd7DpJM8vTvQkfS5XVp
         gXKJDuRqHRV8BNsr9TX3SV0KNEEtWwuCWJHwo4JBh0yvuCaWfbeKPgoioN5Yh/9Oiyog
         zn9n6oDK+i1H9e7qZKnH5xlbYL/ldvIv6YE/Mm5I+EEWhwgkGyKdqi1tByYFuTgPJgia
         NYE/Nyxad16klFq1iCyxWa3eBINEtw4PiTGMCnyYpYHeCGo8gu3nzLG6y0fc89QLUrsA
         UQHHcuh5QCQXgDzmEf7GWNlXw7wWFhx+kIDZ3k1ab6D2nlNfnmoo0jUnWCw8ByeEARsD
         YU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=AOh4SoXVDrB9F094BLaQAydpjfOEuBRHl1w7lLjNPyI=;
        b=gJPTSfZhQZw8CnGG1dJR5lN3Dy8iyFV0bq8YaS7lrPJUYEhIxX7+kszMpQgJWci+Tc
         o+KLZDuTQF8mL446L6Gkv/OfXARdXjfrgINHJaNUwpuGY9lnXXBZgmBpCwni/31KqpQH
         +ydSlpmilRayEoXId1EBDADCBkxVDwdnC9dtnciNXdH168wbdmZx0KlnJrDo4/gWEycU
         HVepP3D8huze6Lo3FV0pqt0/Y7IW7MeZz2PDF/QCDcT5An2T7YsPQdH3GYFbbBMlVcUQ
         BUPB60d3qw9MNic4UVEytv3HLfXAp9oqgQ7rHl6S/ADLmLTPmfcwaclOGnF/44QZd7qY
         Pz2Q==
X-Gm-Message-State: AD7BkJLjccVjzfx0if4u00yhtwU99AhJWY9loUSSalq3JVWa/1bAuhhuoqvCxZB+eredRaLrGywMy0KD+plDvA==
MIME-Version: 1.0
X-Received: by 10.202.58.195 with SMTP id h186mr17616182oia.59.1457462160983;
 Tue, 08 Mar 2016 10:36:00 -0800 (PST)
Received: by 10.76.25.131 with HTTP; Tue, 8 Mar 2016 10:36:00 -0800 (PST)
Received: by 10.76.25.131 with HTTP; Tue, 8 Mar 2016 10:36:00 -0800 (PST)
In-Reply-To: <1456252344-19650-1-git-send-email-dilekuzulmez@gmail.com>
References: <1456252344-19650-1-git-send-email-dilekuzulmez@gmail.com>
Date: Tue, 8 Mar 2016 20:36:00 +0200
Message-ID: <CAOBDApuHSppNNSoap898ihN5F1H8vXBaC=Cp+X9RSYKqS9+sMA@mail.gmail.com>
Subject: Re: [PATCH] Staging: rts5208: Remove unnecessary parentheses
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a113cdffc610aa6052d8dda37

--001a113cdffc610aa6052d8dda37
Content-Type: text/plain; charset=UTF-8

Did you check this ?
On Feb 23, 2016 8:32 PM, "Dilek Uzulmez" <dilekuzulmez@gmail.com> wrote:

> Problem found using checkpatch.pl
> CHECK: Unnecessary parentheses around chip->ms_card
>
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rts5208/ms.c | 92
> ++++++++++++++++++++++----------------------
>  1 file changed, 46 insertions(+), 46 deletions(-)
>
> diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
> index cdaa1ab..44d79ef 100644
> --- a/drivers/staging/rts5208/ms.c
> +++ b/drivers/staging/rts5208/ms.c
> @@ -30,14 +30,14 @@
>
>  static inline void ms_set_err_code(struct rtsx_chip *chip, u8 err_code)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>
>         ms_card->err_code = err_code;
>  }
>
>  static inline int ms_check_err_code(struct rtsx_chip *chip, u8 err_code)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>
>         return (ms_card->err_code == err_code);
>  }
> @@ -51,7 +51,7 @@ static int ms_parse_err_code(struct rtsx_chip *chip)
>  static int ms_transfer_tpc(struct rtsx_chip *chip, u8 trans_mode,
>                         u8 tpc, u8 cnt, u8 cfg)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         u8 *ptr;
>
> @@ -185,7 +185,7 @@ static int ms_transfer_data(struct rtsx_chip *chip, u8
> trans_mode,
>  static int ms_write_bytes(struct rtsx_chip *chip,
>                           u8 tpc, u8 cnt, u8 cfg, u8 *data, int data_len)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>
>         if (!data || (data_len < cnt)) {
> @@ -255,7 +255,7 @@ static int ms_write_bytes(struct rtsx_chip *chip,
>  static int ms_read_bytes(struct rtsx_chip *chip,
>                         u8 tpc, u8 cnt, u8 cfg, u8 *data, int data_len)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u8 *ptr;
>
> @@ -369,7 +369,7 @@ static int ms_send_cmd(struct rtsx_chip *chip, u8 cmd,
> u8 cfg)
>
>  static int ms_set_init_para(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>
>         if (CHK_HG8BIT(ms_card)) {
> @@ -408,7 +408,7 @@ static int ms_set_init_para(struct rtsx_chip *chip)
>
>  static int ms_switch_clock(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>
>         retval = select_card(chip, MS_CARD);
> @@ -542,7 +542,7 @@ static int ms_pull_ctl_enable(struct rtsx_chip *chip)
>
>  static int ms_prepare_reset(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         u8 oc_mask = 0;
>
> @@ -653,7 +653,7 @@ static int ms_prepare_reset(struct rtsx_chip *chip)
>
>  static int ms_identify_media_type(struct rtsx_chip *chip, int
> switch_8bit_bus)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u8 val;
>
> @@ -829,7 +829,7 @@ static int ms_switch_parallel_bus(struct rtsx_chip
> *chip)
>
>  static int ms_switch_8bit_bus(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u8 data[2];
>
> @@ -873,7 +873,7 @@ static int ms_switch_8bit_bus(struct rtsx_chip *chip)
>
>  static int ms_pro_reset_flow(struct rtsx_chip *chip, int switch_8bit_bus)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>
>         for (i = 0; i < 3; i++) {
> @@ -994,7 +994,7 @@ static int msxc_change_power(struct rtsx_chip *chip,
> u8 mode)
>
>  static int ms_read_attribute_info(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u8 val, *buf, class_code, device_type, sub_class, data[16];
>         u16 total_blk = 0, blk_size = 0;
> @@ -1303,7 +1303,7 @@ static int mg_set_tpc_para_sub(struct rtsx_chip
> *chip,
>
>  static int reset_ms_pro(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>  #ifdef XC_POWERCLASS
>         u8 change_power_class;
> @@ -1421,7 +1421,7 @@ static int ms_read_status_reg(struct rtsx_chip *chip)
>  static int ms_read_extra_data(struct rtsx_chip *chip,
>                 u16 block_addr, u8 page_num, u8 *buf, int buf_len)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u8 val, data[10];
>
> @@ -1516,7 +1516,7 @@ static int ms_read_extra_data(struct rtsx_chip *chip,
>  static int ms_write_extra_data(struct rtsx_chip *chip,
>                 u16 block_addr, u8 page_num, u8 *buf, int buf_len)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u8 val, data[16];
>
> @@ -1585,7 +1585,7 @@ static int ms_write_extra_data(struct rtsx_chip
> *chip,
>
>  static int ms_read_page(struct rtsx_chip *chip, u16 block_addr, u8
> page_num)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         u8 val, data[6];
>
> @@ -1670,7 +1670,7 @@ static int ms_read_page(struct rtsx_chip *chip, u16
> block_addr, u8 page_num)
>
>  static int ms_set_bad_block(struct rtsx_chip *chip, u16 phy_blk)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         u8 val, data[8], extra[MS_EXTRA_SIZE];
>
> @@ -1741,7 +1741,7 @@ static int ms_set_bad_block(struct rtsx_chip *chip,
> u16 phy_blk)
>
>  static int ms_erase_block(struct rtsx_chip *chip, u16 phy_blk)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i = 0;
>         u8 val, data[6];
>
> @@ -1862,7 +1862,7 @@ static int ms_init_page(struct rtsx_chip *chip, u16
> phy_blk, u16 log_blk,
>  static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_blk,
>                 u16 log_blk, u8 start_page, u8 end_page)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         bool uncorrect_flag = false;
>         int retval, rty_cnt;
>         u8 extra[MS_EXTRA_SIZE], val, i, j, data[16];
> @@ -2155,7 +2155,7 @@ static int ms_copy_page(struct rtsx_chip *chip, u16
> old_blk, u16 new_blk,
>
>  static int reset_ms(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         u16 i, reg_addr, block_size;
>         u8 val, extra[MS_EXTRA_SIZE], j, *ptr;
> @@ -2394,7 +2394,7 @@ RE_SEARCH:
>
>  static int ms_init_l2p_tbl(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int size, i, seg_no, retval;
>         u16 defect_block, reg_addr;
>         u8 val1, val2;
> @@ -2467,7 +2467,7 @@ INIT_FAIL:
>
>  static u16 ms_get_l2p_tbl(struct rtsx_chip *chip, int seg_no, u16 log_off)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         struct zone_entry *segment;
>
>         if (ms_card->segment == NULL)
> @@ -2484,7 +2484,7 @@ static u16 ms_get_l2p_tbl(struct rtsx_chip *chip,
> int seg_no, u16 log_off)
>  static void ms_set_l2p_tbl(struct rtsx_chip *chip,
>                         int seg_no, u16 log_off, u16 phy_blk)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         struct zone_entry *segment;
>
>         if (ms_card->segment == NULL)
> @@ -2497,7 +2497,7 @@ static void ms_set_l2p_tbl(struct rtsx_chip *chip,
>
>  static void ms_set_unused_block(struct rtsx_chip *chip, u16 phy_blk)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         struct zone_entry *segment;
>         int seg_no;
>
> @@ -2513,7 +2513,7 @@ static void ms_set_unused_block(struct rtsx_chip
> *chip, u16 phy_blk)
>
>  static u16 ms_get_unused_block(struct rtsx_chip *chip, int seg_no)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         struct zone_entry *segment;
>         u16 phy_blk;
>
> @@ -2540,7 +2540,7 @@ static const unsigned short ms_start_idx[] = {0,
> 494, 990, 1486, 1982, 2478,
>  static int ms_arbitrate_l2p(struct rtsx_chip *chip, u16 phy_blk,
>                         u16 log_off, u8 us1, u8 us2)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         struct zone_entry *segment;
>         int seg_no;
>         u16 tmp_blk;
> @@ -2582,7 +2582,7 @@ static int ms_arbitrate_l2p(struct rtsx_chip *chip,
> u16 phy_blk,
>
>  static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         struct zone_entry *segment;
>         bool defect_flag;
>         int retval, table_size, disable_cnt, i;
> @@ -2818,7 +2818,7 @@ BUILD_FAIL:
>
>  int reset_ms_card(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>
>         memset(ms_card, 0, sizeof(struct ms_info));
> @@ -2905,7 +2905,7 @@ static int mspro_set_rw_cmd(struct rtsx_chip *chip,
>
>  void mspro_stop_seq_mode(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>
>         if (ms_card->seq_mode) {
> @@ -2923,7 +2923,7 @@ void mspro_stop_seq_mode(struct rtsx_chip *chip)
>
>  static inline int ms_auto_tune_clock(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>
>         if (chip->asic_code) {
> @@ -2949,7 +2949,7 @@ static int mspro_rw_multi_sector(struct scsi_cmnd
> *srb,
>                                 struct rtsx_chip *chip, u32 start_sector,
>                                 u16 sector_cnt)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         bool mode_2k = false;
>         int retval;
>         u16 count;
> @@ -3092,7 +3092,7 @@ static int mspro_rw_multi_sector(struct scsi_cmnd
> *srb,
>  static int mspro_read_format_progress(struct rtsx_chip *chip,
>                                 const int short_data_len)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u32 total_progress, cur_progress;
>         u8 cnt, tmp;
> @@ -3214,7 +3214,7 @@ static int mspro_read_format_progress(struct
> rtsx_chip *chip,
>
>  void mspro_polling_format_status(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int i;
>
>         if (ms_card->pro_under_formatting &&
> @@ -3232,7 +3232,7 @@ void mspro_polling_format_status(struct rtsx_chip
> *chip)
>  int mspro_format(struct scsi_cmnd *srb, struct rtsx_chip *chip,
>                 int short_data_len, bool quick_format)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u8 buf[8], tmp;
>         u16 para;
> @@ -3324,7 +3324,7 @@ static int ms_read_multiple_pages(struct rtsx_chip
> *chip, u16 phy_blk,
>                                 u8 *buf, unsigned int *index,
>                                 unsigned int *offset)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u8 extra[MS_EXTRA_SIZE], page_addr, val, trans_cfg, data[6];
>         u8 *ptr;
> @@ -3508,7 +3508,7 @@ static int ms_write_multiple_pages(struct rtsx_chip
> *chip, u16 old_blk,
>                                 u8 end_page, u8 *buf, unsigned int *index,
>                                 unsigned int *offset)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, i;
>         u8 page_addr, val, data[16];
>         u8 *ptr;
> @@ -3729,7 +3729,7 @@ static int ms_write_multiple_pages(struct rtsx_chip
> *chip, u16 old_blk,
>  static int ms_finish_write(struct rtsx_chip *chip, u16 old_blk, u16
> new_blk,
>                 u16 log_blk, u8 page_off)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval, seg_no;
>
>         retval = ms_copy_page(chip, old_blk, new_blk, log_blk,
> @@ -3775,7 +3775,7 @@ static int ms_prepare_write(struct rtsx_chip *chip,
> u16 old_blk, u16 new_blk,
>  #ifdef MS_DELAY_WRITE
>  int ms_delay_write(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         struct ms_delay_write_tag *delay_write = &(ms_card->delay_write);
>         int retval;
>
> @@ -3814,7 +3814,7 @@ static inline void ms_rw_fail(struct scsi_cmnd *srb,
> struct rtsx_chip *chip)
>  static int ms_rw_multi_sector(struct scsi_cmnd *srb, struct rtsx_chip
> *chip,
>                         u32 start_sector, u16 sector_cnt)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         unsigned int lun = SCSI_LUN(srb);
>         int retval, seg_no;
>         unsigned int index = 0, offset = 0;
> @@ -4075,7 +4075,7 @@ static int ms_rw_multi_sector(struct scsi_cmnd *srb,
> struct rtsx_chip *chip,
>  int ms_rw(struct scsi_cmnd *srb, struct rtsx_chip *chip,
>         u32 start_sector, u16 sector_cnt)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>
>         if (CHK_MSPRO(ms_card))
> @@ -4091,7 +4091,7 @@ int ms_rw(struct scsi_cmnd *srb, struct rtsx_chip
> *chip,
>
>  void ms_free_l2p_tbl(struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int i = 0;
>
>         if (ms_card->segment != NULL) {
> @@ -4351,7 +4351,7 @@ GetEKBFinish:
>
>  int mg_chg(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         int bufflen;
>         int i;
> @@ -4435,7 +4435,7 @@ int mg_chg(struct scsi_cmnd *srb, struct rtsx_chip
> *chip)
>
>  int mg_get_rsp_chg(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         int bufflen;
>         unsigned int lun = SCSI_LUN(srb);
> @@ -4495,7 +4495,7 @@ int mg_get_rsp_chg(struct scsi_cmnd *srb, struct
> rtsx_chip *chip)
>
>  int mg_rsp(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         int i;
>         int bufflen;
> @@ -4547,7 +4547,7 @@ int mg_rsp(struct scsi_cmnd *srb, struct rtsx_chip
> *chip)
>
>  int mg_get_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         int bufflen;
>         unsigned int lun = SCSI_LUN(srb);
> @@ -4604,7 +4604,7 @@ GetICVFinish:
>
>  int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  {
> -       struct ms_info *ms_card = &(chip->ms_card);
> +       struct ms_info *ms_card = &chip->ms_card;
>         int retval;
>         int bufflen;
>  #ifdef MG_SET_ICV_SLOW
> --
> 1.9.1
>
>

--001a113cdffc610aa6052d8dda37
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Did you check this ?</p>
<div class=3D"gmail_quote">On Feb 23, 2016 8:32 PM, &quot;Dilek Uzulmez&quo=
t; &lt;<a href=3D"mailto:dilekuzulmez@gmail.com">dilekuzulmez@gmail.com</a>=
&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Problem =
found using <a href=3D"http://checkpatch.pl" rel=3D"noreferrer" target=3D"_=
blank">checkpatch.pl</a><br>
CHECK: Unnecessary parentheses around chip-&gt;ms_card<br>
<br>
Signed-off-by: Dilek Uzulmez &lt;<a href=3D"mailto:dilekuzulmez@gmail.com">=
dilekuzulmez@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/rts5208/ms.c | 92 ++++++++++++++++++++++-------------=
---------<br>
=C2=A01 file changed, 46 insertions(+), 46 deletions(-)<br>
<br>
diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c<br=
>
index cdaa1ab..44d79ef 100644<br>
--- a/drivers/staging/rts5208/ms.c<br>
+++ b/drivers/staging/rts5208/ms.c<br>
@@ -30,14 +30,14 @@<br>
<br>
=C2=A0static inline void ms_set_err_code(struct rtsx_chip *chip, u8 err_cod=
e)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ms_card-&gt;err_code =3D err_code;<br>
=C2=A0}<br>
<br>
=C2=A0static inline int ms_check_err_code(struct rtsx_chip *chip, u8 err_co=
de)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return (ms_card-&gt;err_code =3D=3D err_code);<=
br>
=C2=A0}<br>
@@ -51,7 +51,7 @@ static int ms_parse_err_code(struct rtsx_chip *chip)<br>
=C2=A0static int ms_transfer_tpc(struct rtsx_chip *chip, u8 trans_mode,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 u8 tpc, u8 cnt, u8 cfg)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 *ptr;<br>
<br>
@@ -185,7 +185,7 @@ static int ms_transfer_data(struct rtsx_chip *chip, u8 =
trans_mode,<br>
=C2=A0static int ms_write_bytes(struct rtsx_chip *chip,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 u8 tpc, u8 cnt, u8 cfg, u8 *data, int data_len)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!data || (data_len &lt; cnt)) {<br>
@@ -255,7 +255,7 @@ static int ms_write_bytes(struct rtsx_chip *chip,<br>
=C2=A0static int ms_read_bytes(struct rtsx_chip *chip,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 u8 tpc, u8 cnt, u8 cfg, u8 *data, int data_len)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 *ptr;<br>
<br>
@@ -369,7 +369,7 @@ static int ms_send_cmd(struct rtsx_chip *chip, u8 cmd, =
u8 cfg)<br>
<br>
=C2=A0static int ms_set_init_para(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (CHK_HG8BIT(ms_card)) {<br>
@@ -408,7 +408,7 @@ static int ms_set_init_para(struct rtsx_chip *chip)<br>
<br>
=C2=A0static int ms_switch_clock(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 retval =3D select_card(chip, MS_CARD);<br>
@@ -542,7 +542,7 @@ static int ms_pull_ctl_enable(struct rtsx_chip *chip)<b=
r>
<br>
=C2=A0static int ms_prepare_reset(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 oc_mask =3D 0;<br>
<br>
@@ -653,7 +653,7 @@ static int ms_prepare_reset(struct rtsx_chip *chip)<br>
<br>
=C2=A0static int ms_identify_media_type(struct rtsx_chip *chip, int switch_=
8bit_bus)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 val;<br>
<br>
@@ -829,7 +829,7 @@ static int ms_switch_parallel_bus(struct rtsx_chip *chi=
p)<br>
<br>
=C2=A0static int ms_switch_8bit_bus(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 data[2];<br>
<br>
@@ -873,7 +873,7 @@ static int ms_switch_8bit_bus(struct rtsx_chip *chip)<b=
r>
<br>
=C2=A0static int ms_pro_reset_flow(struct rtsx_chip *chip, int switch_8bit_=
bus)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for (i =3D 0; i &lt; 3; i++) {<br>
@@ -994,7 +994,7 @@ static int msxc_change_power(struct rtsx_chip *chip, u8=
 mode)<br>
<br>
=C2=A0static int ms_read_attribute_info(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 val, *buf, class_code, device_type, sub_clas=
s, data[16];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 total_blk =3D 0, blk_size =3D 0;<br>
@@ -1303,7 +1303,7 @@ static int mg_set_tpc_para_sub(struct rtsx_chip *chip=
,<br>
<br>
=C2=A0static int reset_ms_pro(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0#ifdef XC_POWERCLASS<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 change_power_class;<br>
@@ -1421,7 +1421,7 @@ static int ms_read_status_reg(struct rtsx_chip *chip)=
<br>
=C2=A0static int ms_read_extra_data(struct rtsx_chip *chip,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 block_addr, u8 =
page_num, u8 *buf, int buf_len)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 val, data[10];<br>
<br>
@@ -1516,7 +1516,7 @@ static int ms_read_extra_data(struct rtsx_chip *chip,=
<br>
=C2=A0static int ms_write_extra_data(struct rtsx_chip *chip,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 block_addr, u8 =
page_num, u8 *buf, int buf_len)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 val, data[16];<br>
<br>
@@ -1585,7 +1585,7 @@ static int ms_write_extra_data(struct rtsx_chip *chip=
,<br>
<br>
=C2=A0static int ms_read_page(struct rtsx_chip *chip, u16 block_addr, u8 pa=
ge_num)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 val, data[6];<br>
<br>
@@ -1670,7 +1670,7 @@ static int ms_read_page(struct rtsx_chip *chip, u16 b=
lock_addr, u8 page_num)<br>
<br>
=C2=A0static int ms_set_bad_block(struct rtsx_chip *chip, u16 phy_blk)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 val, data[8], extra[MS_EXTRA_SIZE];<br>
<br>
@@ -1741,7 +1741,7 @@ static int ms_set_bad_block(struct rtsx_chip *chip, u=
16 phy_blk)<br>
<br>
=C2=A0static int ms_erase_block(struct rtsx_chip *chip, u16 phy_blk)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i =3D 0;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 val, data[6];<br>
<br>
@@ -1862,7 +1862,7 @@ static int ms_init_page(struct rtsx_chip *chip, u16 p=
hy_blk, u16 log_blk,<br>
=C2=A0static int ms_copy_page(struct rtsx_chip *chip, u16 old_blk, u16 new_=
blk,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 log_blk, u8 sta=
rt_page, u8 end_page)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool uncorrect_flag =3D false;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, rty_cnt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 extra[MS_EXTRA_SIZE], val, i, j, data[16];<b=
r>
@@ -2155,7 +2155,7 @@ static int ms_copy_page(struct rtsx_chip *chip, u16 o=
ld_blk, u16 new_blk,<br>
<br>
=C2=A0static int reset_ms(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 i, reg_addr, block_size;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 val, extra[MS_EXTRA_SIZE], j, *ptr;<br>
@@ -2394,7 +2394,7 @@ RE_SEARCH:<br>
<br>
=C2=A0static int ms_init_l2p_tbl(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int size, i, seg_no, retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 defect_block, reg_addr;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 val1, val2;<br>
@@ -2467,7 +2467,7 @@ INIT_FAIL:<br>
<br>
=C2=A0static u16 ms_get_l2p_tbl(struct rtsx_chip *chip, int seg_no, u16 log=
_off)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct zone_entry *segment;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ms_card-&gt;segment =3D=3D NULL)<br>
@@ -2484,7 +2484,7 @@ static u16 ms_get_l2p_tbl(struct rtsx_chip *chip, int=
 seg_no, u16 log_off)<br>
=C2=A0static void ms_set_l2p_tbl(struct rtsx_chip *chip,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 int seg_no, u16 log_off, u16 phy_blk)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct zone_entry *segment;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ms_card-&gt;segment =3D=3D NULL)<br>
@@ -2497,7 +2497,7 @@ static void ms_set_l2p_tbl(struct rtsx_chip *chip,<br=
>
<br>
=C2=A0static void ms_set_unused_block(struct rtsx_chip *chip, u16 phy_blk)<=
br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct zone_entry *segment;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int seg_no;<br>
<br>
@@ -2513,7 +2513,7 @@ static void ms_set_unused_block(struct rtsx_chip *chi=
p, u16 phy_blk)<br>
<br>
=C2=A0static u16 ms_get_unused_block(struct rtsx_chip *chip, int seg_no)<br=
>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct zone_entry *segment;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 phy_blk;<br>
<br>
@@ -2540,7 +2540,7 @@ static const unsigned short ms_start_idx[] =3D {0, 49=
4, 990, 1486, 1982, 2478,<br>
=C2=A0static int ms_arbitrate_l2p(struct rtsx_chip *chip, u16 phy_blk,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 u16 log_off, u8 us1, u8 us2)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct zone_entry *segment;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int seg_no;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 tmp_blk;<br>
@@ -2582,7 +2582,7 @@ static int ms_arbitrate_l2p(struct rtsx_chip *chip, u=
16 phy_blk,<br>
<br>
=C2=A0static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct zone_entry *segment;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool defect_flag;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, table_size, disable_cnt, i;<br>
@@ -2818,7 +2818,7 @@ BUILD_FAIL:<br>
<br>
=C2=A0int reset_ms_card(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 memset(ms_card, 0, sizeof(struct ms_info));<br>
@@ -2905,7 +2905,7 @@ static int mspro_set_rw_cmd(struct rtsx_chip *chip,<b=
r>
<br>
=C2=A0void mspro_stop_seq_mode(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ms_card-&gt;seq_mode) {<br>
@@ -2923,7 +2923,7 @@ void mspro_stop_seq_mode(struct rtsx_chip *chip)<br>
<br>
=C2=A0static inline int ms_auto_tune_clock(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (chip-&gt;asic_code) {<br>
@@ -2949,7 +2949,7 @@ static int mspro_rw_multi_sector(struct scsi_cmnd *sr=
b,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct rtsx_chip *chip, u32 start_se=
ctor,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 sector_cnt)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bool mode_2k =3D false;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 count;<br>
@@ -3092,7 +3092,7 @@ static int mspro_rw_multi_sector(struct scsi_cmnd *sr=
b,<br>
=C2=A0static int mspro_read_format_progress(struct rtsx_chip *chip,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const int short_data_len)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 total_progress, cur_progress;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 cnt, tmp;<br>
@@ -3214,7 +3214,7 @@ static int mspro_read_format_progress(struct rtsx_chi=
p *chip,<br>
<br>
=C2=A0void mspro_polling_format_status(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int i;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ms_card-&gt;pro_under_formatting &amp;&amp;=
<br>
@@ -3232,7 +3232,7 @@ void mspro_polling_format_status(struct rtsx_chip *ch=
ip)<br>
=C2=A0int mspro_format(struct scsi_cmnd *srb, struct rtsx_chip *chip,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int short_data_len,=
 bool quick_format)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 buf[8], tmp;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 para;<br>
@@ -3324,7 +3324,7 @@ static int ms_read_multiple_pages(struct rtsx_chip *c=
hip, u16 phy_blk,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 *buf, unsigned int *index,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int *offset)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 extra[MS_EXTRA_SIZE], page_addr, val, trans_=
cfg, data[6];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 *ptr;<br>
@@ -3508,7 +3508,7 @@ static int ms_write_multiple_pages(struct rtsx_chip *=
chip, u16 old_blk,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 end_page, u8 *buf, unsigned int *=
index,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int *offset)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 page_addr, val, data[16];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u8 *ptr;<br>
@@ -3729,7 +3729,7 @@ static int ms_write_multiple_pages(struct rtsx_chip *=
chip, u16 old_blk,<br>
=C2=A0static int ms_finish_write(struct rtsx_chip *chip, u16 old_blk, u16 n=
ew_blk,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u16 log_blk, u8 pag=
e_off)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, seg_no;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 retval =3D ms_copy_page(chip, old_blk, new_blk,=
 log_blk,<br>
@@ -3775,7 +3775,7 @@ static int ms_prepare_write(struct rtsx_chip *chip, u=
16 old_blk, u16 new_blk,<br>
=C2=A0#ifdef MS_DELAY_WRITE<br>
=C2=A0int ms_delay_write(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ms_delay_write_tag *delay_write =3D &amp=
;(ms_card-&gt;delay_write);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
<br>
@@ -3814,7 +3814,7 @@ static inline void ms_rw_fail(struct scsi_cmnd *srb, =
struct rtsx_chip *chip)<br>
=C2=A0static int ms_rw_multi_sector(struct scsi_cmnd *srb, struct rtsx_chip=
 *chip,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 u32 start_sector, u16 sector_cnt)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int lun =3D SCSI_LUN(srb);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval, seg_no;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int index =3D 0, offset =3D 0;<br>
@@ -4075,7 +4075,7 @@ static int ms_rw_multi_sector(struct scsi_cmnd *srb, =
struct rtsx_chip *chip,<br>
=C2=A0int ms_rw(struct scsi_cmnd *srb, struct rtsx_chip *chip,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 u32 start_sector, u16 sector_cnt)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (CHK_MSPRO(ms_card))<br>
@@ -4091,7 +4091,7 @@ int ms_rw(struct scsi_cmnd *srb, struct rtsx_chip *ch=
ip,<br>
<br>
=C2=A0void ms_free_l2p_tbl(struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int i =3D 0;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ms_card-&gt;segment !=3D NULL) {<br>
@@ -4351,7 +4351,7 @@ GetEKBFinish:<br>
<br>
=C2=A0int mg_chg(struct scsi_cmnd *srb, struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int bufflen;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int i;<br>
@@ -4435,7 +4435,7 @@ int mg_chg(struct scsi_cmnd *srb, struct rtsx_chip *c=
hip)<br>
<br>
=C2=A0int mg_get_rsp_chg(struct scsi_cmnd *srb, struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int bufflen;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int lun =3D SCSI_LUN(srb);<br>
@@ -4495,7 +4495,7 @@ int mg_get_rsp_chg(struct scsi_cmnd *srb, struct rtsx=
_chip *chip)<br>
<br>
=C2=A0int mg_rsp(struct scsi_cmnd *srb, struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int i;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int bufflen;<br>
@@ -4547,7 +4547,7 @@ int mg_rsp(struct scsi_cmnd *srb, struct rtsx_chip *c=
hip)<br>
<br>
=C2=A0int mg_get_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int bufflen;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned int lun =3D SCSI_LUN(srb);<br>
@@ -4604,7 +4604,7 @@ GetICVFinish:<br>
<br>
=C2=A0int mg_set_ICV(struct scsi_cmnd *srb, struct rtsx_chip *chip)<br>
=C2=A0{<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;(chip-&gt;ms_c=
ard);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct ms_info *ms_card =3D &amp;chip-&gt;ms_ca=
rd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int retval;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int bufflen;<br>
=C2=A0#ifdef MG_SET_ICV_SLOW<br>
--<br>
1.9.1<br>
<br>
</blockquote></div>

--001a113cdffc610aa6052d8dda37--

