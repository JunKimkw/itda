-- 시연용 마스코트 테스트 가게 7곳 + 게시물 7개 (이름에 [테스트] — 지울 땐 test-feed-cleanup.sql)
SET NAMES utf8mb4;
START TRANSACTION;

INSERT INTO store (name, category, address, latitude, longitude, phone, business_hours, description, thumbnail_url,
                   step_free, elevator, is_quest_store, available_coupon_count, owner_id, created_at, updated_at)
VALUES ('[테스트] 헤어살롱 잇다', 'BEAUTY', '서울 노원구 석계로 (테스트 주소)', 37.6168, 127.0575, '02-000-0005', '매일 10:00-20:00 (예약 우선)', '시연용 테스트 가게예요.',
        'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/salon.jpg', 1, 1, 0, 0, NULL, NOW(6), NOW(6));
INSERT INTO shortform (store_id, image_url, title, caption, published, created_at, updated_at)
VALUES (LAST_INSERT_ID(), 'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/salon.jpg', '학생 할인 동네 미용실', '커트·펌·염색 모두 OK! 학생 할인 있고 예약 없이도 방문 가능한 동네 미용실이에요 ✂️', 1, NOW(6) - INTERVAL 7 MINUTE, NOW(6));

INSERT INTO store (name, category, address, latitude, longitude, phone, business_hours, description, thumbnail_url,
                   step_free, elevator, is_quest_store, available_coupon_count, owner_id, created_at, updated_at)
VALUES ('[테스트] 월계 정육마트', 'FOOD_RETAIL', '서울 노원구 월계로 (테스트 주소)', 37.6215, 127.0625, '02-000-0006', '매일 09:00-21:00', '시연용 테스트 가게예요.',
        'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/butcher.jpg', 1, 0, 0, 0, NULL, NOW(6), NOW(6));
INSERT INTO shortform (store_id, image_url, title, caption, published, created_at, updated_at)
VALUES (LAST_INSERT_ID(), 'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/butcher.jpg', '오늘 들어온 1++ 한우', '매일 아침 들여오는 신선한 국내산 한우! 꽃등심·채끝·안심 모두 1++ 등급으로 준비했어요 🥩', 1, NOW(6) - INTERVAL 6 MINUTE, NOW(6));

INSERT INTO store (name, category, address, latitude, longitude, phone, business_hours, description, thumbnail_url,
                   step_free, elevator, is_quest_store, available_coupon_count, owner_id, created_at, updated_at)
VALUES ('[테스트] 월계 통닭', 'RESTAURANT', '서울 노원구 광운로 12 (테스트 주소)', 37.6208, 127.0596, '02-000-0007', '매일 16:00-02:00', '시연용 테스트 가게예요.',
        'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/chicken.jpg', 1, 0, 0, 0, NULL, NOW(6), NOW(6));
INSERT INTO shortform (store_id, image_url, title, caption, published, created_at, updated_at)
VALUES (LAST_INSERT_ID(), 'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/chicken.jpg', '갓 튀긴 바삭한 치킨', '갓 튀겨 바삭한 후라이드부터 양념·간장치킨까지! 배달도 되고, 잇다 쿠폰으로 할인도 받아 가세요 🍗', 1, NOW(6) - INTERVAL 5 MINUTE, NOW(6));

INSERT INTO store (name, category, address, latitude, longitude, phone, business_hours, description, thumbnail_url,
                   step_free, elevator, is_quest_store, available_coupon_count, owner_id, created_at, updated_at)
VALUES ('[테스트] 광운반점', 'RESTAURANT', '서울 노원구 광운로 41 (테스트 주소)', 37.6181, 127.0603, '02-000-0008', '매일 11:00-21:00 (브레이크 15:00-16:30)', '시연용 테스트 가게예요.',
        'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/chinese.jpg', 0, 0, 0, 0, NULL, NOW(6), NOW(6));
INSERT INTO shortform (store_id, image_url, title, caption, published, created_at, updated_at)
VALUES (LAST_INSERT_ID(), 'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/chinese.jpg', '짜장·짬뽕·탕수육 한 상', '쫄깃한 면발의 짜장면, 해물 가득 얼큰한 짬뽕, 겉바속촉 탕수육까지. 볶음밥·군만두도 맛있는 동네 중화요리집이에요 🥢', 1, NOW(6) - INTERVAL 4 MINUTE, NOW(6));

INSERT INTO store (name, category, address, latitude, longitude, phone, business_hours, description, thumbnail_url,
                   step_free, elevator, is_quest_store, available_coupon_count, owner_id, created_at, updated_at)
VALUES ('[테스트] 스시 월계', 'RESTAURANT', '서울 노원구 월계로 52 (테스트 주소)', 37.6199, 127.0624, '02-000-0009', '화-일 11:30-22:00 (월 휴무)', '시연용 테스트 가게예요.',
        'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/sushi.jpg', 1, 1, 0, 0, NULL, NOW(6), NOW(6));
INSERT INTO shortform (store_id, image_url, title, caption, published, created_at, updated_at)
VALUES (LAST_INSERT_ID(), 'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/sushi.jpg', '매일 아침 쥐는 바른 초밥', '신선한 재료로 만드는 바른 초밥! 연어·참치·장어·새우 초밥에 연어알 군함까지, 매일 아침 들여온 생선으로 쥐어요 🍣', 1, NOW(6) - INTERVAL 3 MINUTE, NOW(6));

INSERT INTO store (name, category, address, latitude, longitude, phone, business_hours, description, thumbnail_url,
                   step_free, elevator, is_quest_store, available_coupon_count, owner_id, created_at, updated_at)
VALUES ('[테스트] 라 피아짜', 'RESTAURANT', '서울 노원구 석계로 18 (테스트 주소)', 37.6171, 127.0592, '02-000-0010', '매일 11:30-22:00', '시연용 테스트 가게예요.',
        'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/pasta.jpg', 1, 1, 0, 0, NULL, NOW(6), NOW(6));
INSERT INTO shortform (store_id, image_url, title, caption, published, created_at, updated_at)
VALUES (LAST_INSERT_ID(), 'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/pasta.jpg', '오늘의 이탈리안 한 상', '화덕 피자, 토마토 파스타, 크리미한 버섯 리조또, 부라타 샐러드까지. 오늘도 맛있는 이탈리안 요리를 준비했어요 🍝', 1, NOW(6) - INTERVAL 2 MINUTE, NOW(6));

INSERT INTO store (name, category, address, latitude, longitude, phone, business_hours, description, thumbnail_url,
                   step_free, elevator, is_quest_store, available_coupon_count, owner_id, created_at, updated_at)
VALUES ('[테스트] 광운 동네마트', 'FOOD_RETAIL', '서울 노원구 월계로 30 (테스트 주소)', 37.6212, 127.0611, '02-000-0011', '매일 08:00-23:00', '시연용 테스트 가게예요.',
        'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/mart.jpg', 1, 0, 0, 0, NULL, NOW(6), NOW(6));
INSERT INTO shortform (store_id, image_url, title, caption, published, created_at, updated_at)
VALUES (LAST_INSERT_ID(), 'https://d3fsd6ho09c0x2.cloudfront.net/test-feed/mascot/mart.jpg', '우리 동네 생활 필수품', '생필품·간식·신선식품·음료까지 우리 동네 생활 필수품 다 있어요! 좋은 상품, 착한 가격의 동네마트예요 🛒', 1, NOW(6) - INTERVAL 1 MINUTE, NOW(6));

COMMIT;
