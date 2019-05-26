package me.zhulin.onlineshopping.repository;

import me.zhulin.onlineshopping.entity.ProductInOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Collection;

/**
 * Created By Zhu Lin on 3/14/2018.
 */
@Repository
public interface ProductInOrderRepository extends JpaRepository<ProductInOrder, Long> {

}
